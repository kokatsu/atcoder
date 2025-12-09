import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group.array;

    size_t L = G.length;
    uint res = 1;
    foreach (i; 1 .. L - 1) {
        if (G[i - 1][0] == '1' && G[i][0] == '/' && G[i][1] == 1 && G[i + 1][0] == '2') {
            res = max(res, min(G[i - 1][1], G[i + 1][1]) * 2 + 1);
        }
    }

    res.writeln;
}
