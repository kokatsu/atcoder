import std;

void main() {
    dchar[] S;
    readfln("%s", S);

    auto G = S.group.array;

    size_t n = G.length;
    uint res;
    foreach (i; 0 .. n - 1) {
        if (G[i][0] + 1 == G[i + 1][0]) {
            res += min(G[i][1], G[i + 1][1]);
        }
    }

    res.writeln;
}
