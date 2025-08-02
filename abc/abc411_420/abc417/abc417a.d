import std;

void main() {
    int N, A, B;
    string S;
    readf("%d %d %d\n%s\n", N, A, B, S);

    string res = S[A .. N - B];
    res.writeln;
}
