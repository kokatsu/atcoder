import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int num = A + B + C - max(A, B, C) - min(A, B, C);

    string res = "A";
    if (num == B)
        res = "B";
    if (num == C)
        res = "C";

    res.writeln;
}
