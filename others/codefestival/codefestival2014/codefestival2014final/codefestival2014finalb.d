import std;

void main() {
    string S;
    readf("%s\n", S);

    auto L = S.length;

    int res = iota(L).map!(i => to!int(S[i] - '0') * (i % 2 == 0 ? 1 : -1)).sum;
    res.writeln;
}
