import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    string res = S.count(S[0]) == N ? "Yes" : "No";
    res.writeln;
}
