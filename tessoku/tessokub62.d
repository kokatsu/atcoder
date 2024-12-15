import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new int[][](N + 1);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        edge[A] ~= B, edge[B] ~= A;
    }

    auto prev = new int[](N + 1);

    void f(int x, int y) {
        prev[x] = y;
        foreach (e; edge[x]) {
            if (prev[e] > 0)
                continue;
            f(e, x);
        }
    }

    foreach (i; 1 .. N + 1) {
        if (prev[i] == 0)
            f(i, i);
    }

    int[] res;

    void g(int x) {
        res ~= x;
        if (x != prev[x])
            g(prev[x]);
    }

    g(N);

    res.reverse;

    writefln("%(%s %)", res);
}
