import std;

struct Road {
    long to, dist;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto roads = new Road[][](N);
    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        roads[A] ~= Road(B, C), roads[B] ~= Road(A, C);
    }

    void dijkstra(long x, ref long[] dists) {
        auto seen = new bool[](N);
        auto heap = new BinaryHeap!(Array!Road, "a.dist > b.dist")();
        heap.insert(Road(x, 0));
        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            if (seen[f.to])
                continue;
            seen[f.to] = true;

            foreach (r; roads[f.to]) {
                long d = f.dist + r.dist;
                if (d < dists[r.to]) {
                    dists[r.to] = d;
                    heap.insert(Road(r.to, d));
                }
            }
        }
    }

    auto dists1 = new long[](N), distsN = new long[](N);
    dists1[1 .. N] = distsN[0 .. N - 1] = long.max / 2;
    dijkstra(0, dists1), dijkstra(N - 1, distsN);

    long res;
    foreach (i; 0 .. N) {
        if (dists1[i] + distsN[i] == dists1[N - 1])
            ++res;
    }

    res.writeln;
}
