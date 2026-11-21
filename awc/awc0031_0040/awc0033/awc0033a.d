import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    string S, T;
    readfln("%s", S);
    readfln("%s", T);

    int C = zip(S, T).count!(z => z[0] != z[1]).to!int;

    int res = max(0, C - K);
    res.writeln;
}
