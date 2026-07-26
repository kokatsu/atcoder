import std;

void main() {
    int M, D;
    readfln("%d %d", M, D);

    string S;
    readfln("%s", S);

    auto G = S.group.array;
    size_t N = G.length;

    int res = S.count('.').to!int;
    foreach (i, g; G) {
        if (g[0] == '.') {
            continue;
        }

        if (i > 0) {
            int L = min(G[i - 1][1], D).to!int;
            res -= L;
        }
        if (i < N - 1) {
            int R = min(G[i + 1][1], D).to!int;
            res -= R;
            G[i + 1][1] -= R;
        }
    }

    res.writeln;
}
