import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = new int[][](N);
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        T[A - 1] ~= B;
    }

    auto heap = new BinaryHeap!(Array!int, "a < b");

    auto res = new int[](N);
    foreach (i; 0 .. N) {
        if (i > 0) {
            res[i] += res[i - 1];
        }

        foreach (x; T[i])
            heap.insert(x);

        res[i] += heap.front;
        heap.popFront;
    }

    writefln("%(%d\n%)", res);
}
