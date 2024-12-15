import std;

void main() {
    ulong N;
    string S;
    readf("%d\n%s\n", N, S);

    ulong o = S.count('o');

    ulong res = o + (N - o) * 2;
    res.writeln;
}
