import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto G = new long[][](N, N);
    foreach (i; 0 .. N) {
        G[i][] = -1;
    }

    foreach (_; 0 .. M) {
        long u, v, w;
        readf("%d %d %d\n", u, v, w);

        --u, --v;
        G[u][v] = G[v][u] = w;
    }

    long res = long.max;

    void dfs(long now, long xor, bool[] visited) {
        visited[now] = true;

        foreach (i; 0 .. N) {
            if (G[now][i] == -1 || visited[i]) {
                continue;
            }

            xor ^= G[now][i];

            if (i == N - 1) {
                res = min(res, xor);
            }
            else {
                dfs(i, xor, visited);
            }

            xor ^= G[now][i];
        }

        visited[now] = false;
    }

    dfs(0, 0, new bool[](N));

    res.writeln;
}
