import std;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    long f(long x, long y, long z) {
        return x - x / y - x / z + x / ((y * z) / gcd(y, z));
    }

    long res = f(B, C, D) - f(A - 1, C, D);
    res.writeln;
}
