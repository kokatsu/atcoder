import std;

void main() {
    int A, B, C, D;
    readf("%d\n%d\n%d\n%d\n", A, B, C, D);

    int res = min(A, B) + min(C, D);
    res.writeln;
}
