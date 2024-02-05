import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    string res = format("%b", C == C.clamp(A, B-1));
    res.writeln;
}