import std;

void main() {
    long A, B, C;
    readf("%d %d %d\n", A, B, C);

    long G = gcd(A, gcd(B, C));

    long res = A / G + B / G + C / G - 3;
    res.writeln;
}