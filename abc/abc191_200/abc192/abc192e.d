import std;

struct Railroad {
    long to, time, mul;
}

void main() {
    long N, M, X, Y;
    readf("%d %d %d %d\n", N, M, X, Y);

    auto R = new Railroad[][](N);
    foreach (_; 0 .. M) {
        long A, B, T, K;
        readf("%d %d %d %d\n", A, B, T, K);

        --A, --B;
        R[A] ~= Railroad(B, T, K), R[B] ~= Railroad(A, T, K);
    }

    --X, --Y;

    auto cost = new long[](N);
    cost[] = long.max;
    cost[X] = 0;

    auto heap = new BinaryHeap!(Array!Railroad, "a.time > b.time")();
    heap.insert(Railroad(X, 0, 0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        if (f.to == Y) break;

        foreach (r; R[f.to]) {
            long t = ((f.time + r.mul - 1) / r.mul) * r.mul + r.time;

            if (t < cost[r.to]) {
                cost[r.to] = t;
                heap.insert(Railroad(r.to, t, 0));
            }
        }
    }

    long res = (cost[Y] == long.max ? -1 : cost[Y]);
    res.writeln;
}