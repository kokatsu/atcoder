import std;

void main() {
    long n;
    readf("%d\n", n);

    long[] fib = [0, 1];
    while (fib.back < n) {
        fib ~= fib[$ - 2] + fib[$ - 1];
    }

    long res;
    foreach_reverse (f; fib) {
        if (f > 0 && f <= n) {
            n -= f;
            ++res;
        }
    }

    res.writeln;
}
