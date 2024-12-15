import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto M = new int[][](D);
    foreach (_; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        M[X - 1] ~= Y;
    }

    auto heap = new BinaryHeap!(Array!int, "a < b")();
    int res;
    foreach (i; 0 .. D) {
        foreach (m; M[i])
            heap.insert(m);

        if (!heap.empty) {
            res += heap.front;
            heap.popFront;
        }
    }

    res.writeln;
}
