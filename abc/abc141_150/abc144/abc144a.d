import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = -1;
    if (A < 10 && B < 10) res = A * B;

    res.writeln;
}