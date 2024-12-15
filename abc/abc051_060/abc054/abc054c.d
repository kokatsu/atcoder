import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new bool[][](N, N);
    foreach (_; 0 .. M) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        edge[a][b] = true, edge[b][a] = true;
    }

    auto path = iota(1, N).array;

    int res;
    foreach (p; path.permutations) {
        int x;
        bool isOK = true;
        foreach (y; p) {
            isOK &= edge[x][y];
            x = y;
        }

        if (isOK)
            ++res;
    }

    res.writeln;
}
