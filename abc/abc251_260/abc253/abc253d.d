import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    long f(long x, long y) {
        long d = x / y;
        return y * d * (d + 1) / 2;
    }

    long l = A / gcd(A, B) * B;

    long res = f(N, 1) - f(N, A) - f(N, B) + f(N, l);
    res.writeln;
}