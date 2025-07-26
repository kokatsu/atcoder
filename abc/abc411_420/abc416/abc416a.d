import std;

void main() {
    int N, L, R;
    string S;
    readf("%d %d %d\n%s\n", N, L, R, S);

    string res = S[L - 1 .. R].all!(s => s == 'o') ? "Yes" : "No";
    res.writeln;
}
