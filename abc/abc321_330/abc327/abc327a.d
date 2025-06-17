import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    string res = S.canFind("ab") || S.canFind("ba") ? "Yes" : "No";
    res.writeln;
}
