import std;

void main() {
    int N;
    readf("%d\n", N);

    auto G = new int[][](N);
    auto D = new int[N];
    foreach (i; 0 .. N - 1) {
        int u, v;
        readf("%d %d\n", u, v);

        --u, --v;
        G[u] ~= v, G[v] ~= u;
        ++D[u], ++D[v];
    }

    bool isAlice = N % 2 == 1;
    foreach (i; 0 .. N) {
        int cnt = 0;
        foreach (g; G[i]) {
            if (D[g] == 1) {
                ++cnt;
            }
        }

        if (cnt > 1) {
            isAlice = true;
            break;
        }
    }

    string res = isAlice ? "Alice" : "Bob";
    res.writeln;
}
