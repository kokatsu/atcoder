import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = new long[](N - 1), B = new long[](N - 1), X = new long[](N - 1);
    foreach (i; 0 .. N - 1) {
        readf("%d %d %d\n", A[i], B[i], X[i]);
    }

    X[] -= 1;

    long[] T = new long[](N);
    T[1 .. N] = long.max;

    auto heap = new BinaryHeap!(Array!(Tuple!(long, long)), "a[1] > b[1]")();
    heap.insert(Tuple!(long, long)(0, 0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.removeFront;

        if (f[0] >= N - 1) {
            continue;
        }

        if (T[f[0]] + A[f[0]] < T[f[0] + 1]) {
            T[f[0] + 1] = T[f[0]] + A[f[0]];
            heap.insert(Tuple!(long, long)(f[0] + 1, T[f[0] + 1]));
        }

        if (T[f[0]] + B[f[0]] < T[X[f[0]]]) {
            T[X[f[0]]] = T[f[0]] + B[f[0]];
            heap.insert(Tuple!(long, long)(X[f[0]], T[X[f[0]]]));
        }
    }

    long res = T[N - 1];
    res.writeln;
}
