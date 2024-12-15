import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long G = gcd(A, B);

    long res = A / G * B;
    res.writeln;
}
