import std;

void main() {
    long A, B, X;
    readf("%d %d %d\n", A, B, X);

    long f(long x, long y) {
        return A * x + B * y;
    }

    long d = 1;
    while (true) {
        long l = 10 ^^ (d - 1) - 1, r = 10 ^^ d;
        if (f(r - 1, d) >= X) {
            while (r - l > 1) {
                long mid = (l + r) / 2;
                (f(mid, d) <= X ? l : r) = mid;
            }

            min(10 ^^ 9, l).writeln;
            return;
        }

        ++d;
    }
}
