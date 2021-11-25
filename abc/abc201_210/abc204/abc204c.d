import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto path = new int[][](N+1);
    foreach (i; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        path[A] ~= B;
    }

    void dfs(int pos, ref int cnt, ref bool[] seen) {
        seen[pos] = true;
        ++cnt;

        foreach (p; path[pos]) {
            if (!seen[p]) {
                dfs(p, cnt, seen);
            }
        }
    }

    int res;
    foreach (i; 1 .. N+1) {
        int cnt;
        auto seen = new bool[](N+1);
        dfs(i, cnt, seen);

        res += cnt;
    }

    res.writeln;
}