import std;

void main() {
    string A, B, C;
    readf("%s %s %s\n", A, B, C);

    string res = (A[$-1] == B[0] && B[$-1] == C[0]) ? "YES" : "NO";
    res.writeln;
}