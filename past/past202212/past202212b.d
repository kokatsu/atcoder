import std;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    if (B < 0) A = -A, B = -B;
    if (D < 0) C = -C, D = -D;

    long L = A * D, R = C * B;

    dchar res = '=';
    if (L < R) res = '<';
    if (L > R) res = '>';

    res.writeln;
}