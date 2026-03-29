import std;

void main() {
    int A, B;
    readf("%d %d", A, B);

    int res = abs(B - A) - (B.sgn - A.sgn) / 2;
    res.writeln;
}
