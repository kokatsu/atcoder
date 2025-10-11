import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    Tuple!(int, int)[] G = new Tuple!(int, int)[](M);
    foreach (i; 0 .. M) {
        int u, v;
        readf("%d %d\n", u, v);

        --u, --v;
        G[i] = tuple(u, v);
    }

    int res = M, L = 1 << N;
    foreach (i; 0 .. L) {
        int num;

        foreach (g; G) {
            int x = (i >> g[0]) & 1;
            int y = (i >> g[1]) & 1;
            if (x == y) {
                ++num;
            }
        }

        res = min(res, num);
    }

    res.writeln;
}
