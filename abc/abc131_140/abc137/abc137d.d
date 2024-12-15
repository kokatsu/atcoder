import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto list = new int[][](M + 1);
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        if (A <= M)
            list[A] ~= B;
    }

    auto heap = new BinaryHeap!(Array!int, "a < b")();
    int res;
    foreach (i; 1 .. M + 1) {
        foreach (l; list[i])
            heap.insert(l);

        if (!heap.empty) {
            res += heap.front;
            heap.popFront;
        }
    }

    res.writeln;
}
