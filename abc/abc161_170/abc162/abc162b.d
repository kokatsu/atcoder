import std;

void main() {
    long N;
    readf("%d\n", N);

    long f(long x) {
        long y = N / x;
        return y * (y + 1) / 2 * x;
    }

    long res = f(1) - f(3) - f(5) + f(15);
    res.writeln;
}
