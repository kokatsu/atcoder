import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    string res = iota(N * 2).map!(i => S[i / 2]).array;
    res.writeln;
}
