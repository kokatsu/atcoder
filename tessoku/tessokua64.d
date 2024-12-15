import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto edge = new Tuple!(long, long)[][](N);
    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        edge[A] ~= tuple(B, C), edge[B] ~= tuple(A, C);
    }

    auto dist = new long[](N);
    dist[1 .. N] = long.max;

    auto heap = new BinaryHeap!(Array!(Tuple!(long, long)), "a[1] > b[1]")();
    heap.insert(tuple(0L, 0L));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;
        foreach (e; edge[f[0]]) {
            long d = f[1] + e[1];
            if (dist[e[0]] <= d)
                continue;

            dist[e[0]] = d;
            heap.insert(tuple(e[0], d));
        }
    }

    auto res = dist.replace(long.max, -1);
    writefln("%(%s\n%)", res);
}
