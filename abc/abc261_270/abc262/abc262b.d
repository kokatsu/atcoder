import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto G = new int[][](N);
    auto C = new bool[][](N, N);
    foreach (_; 0 .. M) {
        int U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        G[U] ~= V;
        C[U][V] = true;
    }

    int res;
    foreach (i; 0 .. N) {
        G[i].sort;
        auto L = G[i].length;
        foreach (j; 0 .. L) {
            res += G[i][j + 1 .. L].count!(x => C[G[i][j]][x]);
        }
    }

    res.writeln;
}
