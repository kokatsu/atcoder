import std;

void main() {
    int N, D;
    string S;
    readf("%d %d\n%s\n", N, D, S);

    int res = S.count('.').to!int + D;
    res.writeln;
}
