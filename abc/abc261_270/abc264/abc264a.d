import std;

enum string S = "atcoder";

void main() {
    int L, R;
    readf("%d %d\n", L, R);

    string res = S[L - 1 .. R];
    res.writeln;
}
