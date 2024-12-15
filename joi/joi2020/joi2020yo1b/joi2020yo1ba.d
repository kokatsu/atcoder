import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int res = A + B + C - min(A, B, C);
    res.writeln;
}
