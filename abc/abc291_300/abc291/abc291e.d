import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto cnts = new int[](N+1);
    auto edges = new int[][](N+1);
    foreach (_; 0 .. M) {
        int X, Y;
        readf("%d %d\n", X, Y);

        ++cnts[Y];
        edges[X] ~= Y;
    }

    int[] heap;
    foreach (i; 1 .. N+1) {
        if (cnts[i] == 0) {
            heap ~= i;
        }
    }

    int[] A;
    while (!heap.empty) {
        if (heap.length >= 2) {
            writeln("No");
            return;
        }

        auto f = heap.front;
        heap.popFront;

        A ~= f;

        foreach (e; edges[f]) {
            --cnts[e];
            if (cnts[e] == 0) heap ~= e;
        }
    }

    auto res = iota(1, N+1).array;
    zip(A, res).sort!"a[0] < b[0]";

    writeln("Yes");
    writefln("%(%s %)", res);
}