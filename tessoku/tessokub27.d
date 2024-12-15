import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long g = gcd(A, B);

    long res = A / g * B;
    res.writeln;
}
