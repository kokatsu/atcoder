import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    A[] -= 1;
    B[] -= 1;

    auto G = new int[][](N);
    foreach (a, b; zip(A, B)) {
        G[a] ~= b;
        G[b] ~= a;
    }

    auto X = new int[](N);
    X[] = -1;

    bool ok = true;

    void dfs(int u, int v) {
        X[u] = v;
        foreach (g; G[u]) {
            if (X[g] == -1) {
                dfs(g, v ^ 1);
            }
            else if (X[g] == v) {
                ok = false;
            }
        }
    }

    foreach (i; 0 .. N) {
        if (X[i] == -1) {
            dfs(i, 0);
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
