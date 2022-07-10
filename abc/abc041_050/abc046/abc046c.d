import std;

void main() {
    int N;
    readf("%d\n", N);

    long f(long a, long b) {
        return (a + b - 1) / b;
    }

    long x = 1, y = 1;
    foreach (_; 0 .. N) {
        long T, A;
        readf("%d %d\n", T, A);

        long M = max(f(x, T), f(y, A));
        x = M * T, y = M * A;
    }

    long res = x + y;
    res.writeln;
}