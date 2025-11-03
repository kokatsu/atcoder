import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    string res = "Yes";

    if (B < C && clamp(A, B, C) == A) {
        res = "No";
    }

    if (B > C && clamp(A, C, B) != A) {
        res = "No";
    }

    res.writeln;
}
