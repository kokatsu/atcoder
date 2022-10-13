import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto G = S.group.array;

    auto res = G.length;
    res.writeln;
}