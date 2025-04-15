import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    string res = (A + 1 == B && (A - 1) / 3 == (B - 1) / 3) ? "Yes" : "No";
    res.writeln;
}
