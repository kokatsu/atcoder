import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = max(A + B, A - B, A * B);
    res.writeln;
}
