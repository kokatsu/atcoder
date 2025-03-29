import std;

void main() {
    int N;
    string S, T;
    readf("%d\n%s\n%s\n", N, S, T);

    ulong res = N.iota.filter!(i => S[i] != T[i]).array.length;
    res.writeln;
}
