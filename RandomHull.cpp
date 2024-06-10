#include <RandomHull.h>
#include <algorithm>
#include <multimap.h>
#include <ostream>
#include <thread>
#include <unordered_set>
#include <utility>
#include <vector>

std::map<random_hull::Edge, std::vector<int>> C;
std::mutex C_mtx;

std::set<random_hull::Edge> H;
std::mutex H_mtx;

random_hull::multimap<Point, random_hull::Edge> M;
std::mutex M_mtx;

std::set<random_hull::Edge>

random_hull::__convex_hull(const std::vector<Point> &points) {
    if (points.size() <= 3)
        return {};

    std::vector<Edge> edges = {Edge(points[0], points[1]),
                               Edge(points[1], points[2]),
                               Edge(points[2], points[0])};

    if (!is_visible(points[2], Edge(points[0], points[1]))) {
        edges.push_back(Edge(points[0], points[1]));
    } else {
        edges.push_back(Edge(points[1], points[0]));
    }

    if (!is_visible(points[0], Edge(points[1], points[2]))) {
        edges.push_back(Edge(points[1], points[2]));
    } else {
        edges.push_back(Edge(points[2], points[1]));
    }

    if (!is_visible(points[1], Edge(points[0], points[2]))) {
        edges.push_back(Edge(points[0], points[2]));
    } else {
        edges.push_back(Edge(points[2], points[0]));
    }

    for (auto &edge : edges) {
        H.insert(edge);
    }

    std::vector<std::thread> workers(3);

    for (int i = 0; i < 3; ++i) {
        workers[i] = std::thread(&random_hull::build_c, std::ref(edges[i]),
                                 std::cref(points), std::ref(C));
    }

    for (auto &w : workers) {
        w.join();
    }

    for (int i = 0; i < 3; ++i) {
        workers[i] =
            std::thread(random_hull::process_ridge, std::cref(edges[i]),
                        std::cref(points[(i + 1) % 3]),
                        std::cref(edges[(i + 1) % 3]), std::cref(points));
    }

    for (int i = 0; i < 3; ++i) {
        workers[i].join();
    }

    return H;
}

std::set<random_hull::Edge>
random_hull::__convex_hull__sequential(const std::vector<Point> &points) {
    if (points.size() <= 3)
        return {};

    std::vector<Edge> edges = {Edge(points[0], points[1]),
                               Edge(points[1], points[2]),
                               Edge(points[2], points[0])};

    if (!is_visible(points[2], Edge(points[0], points[1]))) {
        edges.push_back(Edge(points[0], points[1]));
    } else {
        edges.push_back(Edge(points[1], points[0]));
    }

    if (!is_visible(points[0], Edge(points[1], points[2]))) {
        edges.push_back(Edge(points[1], points[2]));
    } else {
        edges.push_back(Edge(points[2], points[1]));
    }

    if (!is_visible(points[1], Edge(points[0], points[2]))) {
        edges.push_back(Edge(points[0], points[2]));
    } else {
        edges.push_back(Edge(points[2], points[0]));
    }

    for (auto &edge : edges) {
        H.insert(edge);
    }

    // std::vector<std::thread> workers(3);

    for (int i = 0; i < 3; ++i) {
        build_c(edges[i], points, C);
    }

    for (int i = 0; i < 3; ++i) {
        process_ridge_sequential(edges[i], points[(i + 1) % 3],
                                 edges[(i + 1) % 3], points);
    }

    return H;
}

std::vector<Point> random_hull::convex_hull(std::vector<Point> &points) {

    const auto &H = random_hull ::__convex_hull__sequential(points);

    std::unordered_set<Point> hash_set;

    for (const auto &x : H) {
        std::cout << x.first << " " << x.second << "\n";
        hash_set.insert(x.first);
        hash_set.insert(x.second);
    }

    std::vector<Point> result;

    for (const auto &iter : hash_set) {
        result.push_back(iter);
    }

    return result;
}
std::vector<Point> random_hull::convex_hull_parallel(std::vector<Point> &points) {

    const auto &H = random_hull ::__convex_hull(points);

    std::unordered_set<Point> hash_set;

    for (const auto &x : H) {
        std::cout << x.first << " " << x.second << "\n";
        hash_set.insert(x.first);
        hash_set.insert(x.second);
    }

    std::vector<Point> result;

    for (const auto &iter : hash_set) {
        result.push_back(iter);
    }

    return result;
}

void random_hull::build_c(Edge &t, const std::vector<Point> &points,
                          std::map<random_hull::Edge, std::vector<int>> &C) {

    for (size_t i = 0; i < points.size(); ++i) {

        if (is_visible(points[i], t)) {
            C[t].push_back(i);
        }
    }
}

bool random_hull::is_visible(const Point &p, const Edge &e) {

    return cross_prod(e.first - p, e.second - p) > 0;
}

random_hull::Edge random_hull::join(const Point &p, const Point &r,
                                    const Edge &t1) {
    const Point &point1 = t1.first;
    const Point &point2 = t1.second;
    Point other;
    if (point1 == r) {
        other = point2;
    } else {
        other = point1;
    }

    if (!is_visible(other, Edge(p, r))) {
        return Edge(p, r);
    }
    return Edge(r, p);
}

void random_hull::process_ridge_sequential(const Edge &t1, const Point &r,
                                           const Edge &t2,
                                           const std::vector<Point> &points) {
    // std::cout << r << "\n";

    if (get_min(C[t1]) == max_size && get_min(C[t2]) == max_size)
        return;
    if (get_min(C[t1]) == get_min(C[t2])) {
        H.erase(t1);
        H.erase(t2);
        return;
    }

    if (get_min(C[t2]) < get_min(C[t1])) {
        process_ridge_sequential(t2, r, t1, points);
        return;
    }

    print_ridge(t1, t2, r);

    size_t index = get_min(C[t1]);

    // std::cout << index << " ";
    //  Point p = points[index];
    const Point &p = points[index];

    Edge t = join(p, r, t1);

    merge_sets(C, t1, t2, t, points);

    // std::cout << C[t].size() << "\n";

    H.erase(t1);
    H.insert(t);

    Point r1 = t.first, r2 = t.second;

    if (r2 == r)
        std::swap(r1, r2);

    // std::thread worker1, worker2;
    process_ridge_sequential(t, r1, t2, points);

    process_other_ridge_sequential(r2, t, points);
}

void random_hull::process_ridge(const Edge &t1, const Point &r, const Edge &t2,
                                const std::vector<Point> &points) {
    if (get_min(C[t1]) == max_size && get_min(C[t2]) == max_size)
        return;

    if (get_min(C[t1]) == get_min(C[t2])) {
        H.erase(t1);
        H.erase(t2);
        return;
    }

    if (get_min(C[t2]) < get_min(C[t1])) {
        process_ridge(t2, r, t1, points);
        return;
    }

    size_t index = get_min(C[t1]);

    // Point p = points[index];
    const Point &p = points[index];

    Edge t = join(r, p, t1);
    merge_sets(C, t1, t2, t, points);

    H.erase(t1);
    H.insert(t);

    Point r1 = t.first, r2 = t.second;

    if (r2 == r)
        std::swap(r1, r2);
    std::thread worker1, worker2;
    worker1 = std::thread(&process_ridge, std::cref(t), std::cref(r1),
                          std::cref(t2), std::cref(points));

    worker2 = std::thread(&process_other_ridge, std::cref(r2), std::cref(t),
                          std::cref(points));
    worker1.join();
    worker2.join();
}

void random_hull::process_other_ridge(const Point &r1, const Edge &t,
                                      const std::vector<Point> &points) {
    if (!M.insert_and_set(r1, t)) {
        const Edge &t1 = M.get_value(r1, t);
        process_ridge(t, r1, t1, points);
    }
}

void random_hull::process_other_ridge_sequential(
    const Point &r1, const Edge &t, const std::vector<Point> &points) {
    if (!M.insert_and_set(r1, t)) {
        const Edge &t1 = M.get_value(r1, t);
        process_ridge_sequential(t, r1, t1, points);
    }
}

size_t random_hull::get_min(const std::vector<int> &points_set) {
    if (points_set.size() == 0) {
        return max_size;
    }

    return points_set[0];
}

void random_hull::merge_sets(std::map<random_hull::Edge, std::vector<int>> &C,
                             const random_hull::Edge &t1,
                             const random_hull::Edge &t2,
                             const random_hull::Edge &t,
                             const std::vector<Point> &points) {

    const auto &set1 = C[t1];
    const auto &set2 = C[t2];
    std::vector<int> merged_sets_temp(set1.size() + set2.size());
    std::merge(set1.begin(), set1.end(), set2.begin(), set2.end(),
               merged_sets_temp.begin());

    std::vector<int> merged_sets;

    for (size_t i = 0; i < merged_sets_temp.size(); ++i) {

        const Point &tmp_point = points[merged_sets_temp[i]];

        if (random_hull::is_visible(tmp_point, t)) {
            merged_sets.push_back(merged_sets_temp[i]);
        }
    }

    // std::cout << merged_sets.size() << "\n";

    C[t] = merged_sets;
}

void random_hull::print_ridge(const random_hull::Edge &t1,
                              const random_hull::Edge &t2, const Point &r) {

    std::cout << "( " << t1.first << " , " << t1.second << " )";
    std::cout << " || ";
    std::cout << r;
    std::cout << " || ";
    std::cout << "( " << t2.first << " , " << t2.second << " )";
    std::cout << "\n\n\n";
}

void random_hull::print_edge(const random_hull::Edge &t1) {}

std::ostream &operator<<(std::ostream &os, const random_hull::Edge &edge) {
    os << " ( " << edge.first << "  -----  " << edge.second << " ) ";
    return os;
}

