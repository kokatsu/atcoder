import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    int[] C = new int[](N + 1);
    C[1 .. $] = 1;

    auto rbt = redBlackTree(iota(1, N + 1));

    int[] A;
    foreach (_; 0 .. Q) {
        int X, Y;
        readf("%d %d\n", X, Y);

        int S;
        auto lb = rbt.lowerBound(X + 1);
        foreach (v; lb) {
            S += C[v];
            C[Y] += C[v];
            C[v] = 0;
        }
        rbt.removeKey(lb);

        A ~= S;
    }

    string res = format("%(%d\n%)", A);
    res.writeln;
}
