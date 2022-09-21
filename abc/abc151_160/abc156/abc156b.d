import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    string S = N.to!string(K);

    auto res = S.length;
    res.writeln;
}