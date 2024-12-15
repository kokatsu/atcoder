import std;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    long X = C * D - B;

    long res = -1;
    if (X > 0)
        res = (A + X - 1) / X;

    res.writeln;
}
