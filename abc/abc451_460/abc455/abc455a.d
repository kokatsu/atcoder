import std;

void main() {
    int A, B, C;
    readfln("%d %d %d", A, B, C);

    string res = (A != B && B == C) ? "Yes" : "No";
    res.writeln;
}
