import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    int res = max(A * B, C * D);
    res.writeln;
}
