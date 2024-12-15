import std;

struct Edge {
    int to, dist, num;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edges = new Edge[][](N);
    foreach (i; 0 .. M) {
        int a, b, c;
        readf("%d %d %d\n", a, b, c);

        --a, --b;
        edges[a] ~= Edge(b, c, i);
        edges[b] ~= Edge(a, c, i);
    }

    auto used = new bool[](M);

    void f(int x) {
        auto dists = new int[](N);
        dists[] = int.max / 2;
        dists[x] = 0;

        auto heap = new BinaryHeap!(Array!Edge, "a.dist > b.dist")();
        heap.insert(Edge(x, 0, -1));
        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            if (f.dist > dists[f.to])
                continue;

            if (f.num != -1)
                used[f.num] = true;

            foreach (e; edges[f.to]) {
                int tmp = dists[f.to] + e.dist;
                if (tmp >= dists[e.to])
                    continue;

                dists[e.to] = tmp;
                heap.insert(Edge(e.to, dists[e.to], e.num));
            }
        }
    }

    foreach (i; 0 .. N)
        f(i);

    int res;
    foreach (i; 0 .. M) {
        if (!used[i])
            ++res;
    }

    res.writeln;
}
