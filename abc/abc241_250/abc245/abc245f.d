import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto edge = new long[][](N);
    foreach (_; 0 .. M) {
        long U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        edge[V] ~= U;
    }

    auto cnts = new long[](N);
    foreach (i; 0 .. N) {
        foreach (e; edge[i]) {
            ++cnts[e];
        }
    }

    long[] stack;
    foreach (i, c; cnts) {
        if (c == 0)
            stack ~= i;
    }

    long res = N;
    while (!stack.empty) {
        auto f = stack.front;
        stack.popFront;
        --res;

        foreach (e; edge[f]) {
            --cnts[e];
            if (cnts[e] == 0) {
                stack ~= e;
            }
        }
    }

    res.writeln;
}
