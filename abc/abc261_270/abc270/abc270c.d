import std;

void main() {
    int N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    auto edges = new int[][](N);
    foreach (_; 0 .. N-1) {
        int U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        edges[U] ~= V, edges[V] ~= U;
    }

    --X, --Y;

    auto par = new int[](N);
    par[X] = -1;

    void f(int now, int pre = -1) {
        foreach (e; edges[now]) {
            if (e == pre) continue;

            par[e] = now;
            f(e, now);
        }
    }

    f(X);

    int[] res = [Y + 1];
    int pos = Y;
    while (par[pos] != -1) {
        res ~= par[pos] + 1;
        pos = par[pos];
    }

    res.reverse;

    writefln("%(%s %)", res);
}