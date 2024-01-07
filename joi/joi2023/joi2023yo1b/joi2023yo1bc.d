import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    string res = S[0..N/2] == S[N/2..N] ? "Yes" : "No";
    res.writeln;
}