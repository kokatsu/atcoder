import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    string res = S.endsWith("tea") ? "Yes" : "No";
    res.writeln;
}
