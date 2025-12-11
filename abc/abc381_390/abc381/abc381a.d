import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group.array;

    size_t L = G.length;
    string res = "No";
    if (S == "/") {
        res = "Yes";
    }
    if (L == 3 && G[0][0] == '1' && G[1][0] == '/' && G[1][1] == 1 && G[2][0] == '2' && G[0][1] == G[2][1]) {
        res = "Yes";
    }

    res.writeln;
}
