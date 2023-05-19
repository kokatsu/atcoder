import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group;

    writeln(G.canFind!(g => g[1] >= 3) ? "Yes" : "No");
}