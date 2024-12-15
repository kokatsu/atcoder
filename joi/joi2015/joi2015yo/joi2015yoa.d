import std;

void main() {
    int A, B, C, D, P;
    readf("%d\n%d\n%d\n%d\n%d\n", A, B, C, D, P);

    int X = A * P, Y = B + max(0, P - C) * D;

    int res = min(X, Y);
    res.writeln;
}
