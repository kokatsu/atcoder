import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edges = new int[][](N);
    foreach (_; 0 .. M) {
        int u, v;
        readf("%d %d\n", u, v);

        edges[u - 1] ~= v - 1;
    }

    int res;

    void dfs(int now, ref bool[] seen) {
        seen[now] = true;

        foreach (e; edges[now]) {
            if (seen[e])
                continue;

            ++res;
            dfs(e, seen);
        }
    }

    foreach (i; 0 .. N) {
        auto seen = new bool[](N);
        dfs(i, seen);
    }

    res -= M;

    res.writeln;
}
