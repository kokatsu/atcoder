import std;

void main() {
    int N, M;
    string S;
    readf("%d %d\n%s\n", N, M, S);

    auto C = readln.chomp.split.to!(int[]);

    auto G = new int[][](M + 1);
    foreach (i, c; C) {
        G[c] ~= i.to!int;
    }

    auto res = new char[](N);
    foreach (i; 1 .. M + 1) {
        auto L = G[i].length;

        foreach (j; 0 .. L) {
            res[G[i][(j + 1) % L]] = S[G[i][j]];
        }
    }

    res.writeln;
}
