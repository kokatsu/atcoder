import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    string res = "No";
    if (A == B && B == C) {
        res = "Yes";
    }
    else if (A + B == C || B + C == A || C + A == B) {
        res = "Yes";
    }

    res.writeln;
}
