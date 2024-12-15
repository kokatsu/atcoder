import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new Tuple!(int, int)[][](N);
    foreach (_; 0 .. M) {
        int A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        edge[A] ~= tuple(B, C), edge[B] ~= tuple(A, C);
    }

    auto dist = new Tuple!(int, int)[](N);
    dist[1 .. N] = tuple(-1, int.max);

    auto heap = new BinaryHeap!(Array!(Tuple!(int, int)), "a[1] > b[1]")();
    heap.insert(tuple(0, 0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;
        foreach (e; edge[f[0]]) {
            int d = f[1] + e[1];
            if (dist[e[0]][1] <= d)
                continue;

            dist[e[0]] = tuple(f[0], d);
            heap.insert(tuple(e[0], d));
        }
    }

    int pos = N - 1;
    int[] res = [N - 1];
    while (pos > 0) {
        res ~= dist[pos][0];
        pos = dist[pos][0];
    }

    res[] += 1;
    res.reverse;

    writefln("%(%s %)", res);
}
