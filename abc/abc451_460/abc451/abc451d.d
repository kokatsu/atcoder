import std;

enum long MAX = 10L ^^ 9;

void main() {
    long N;
    readfln("%d", N);

    long concat(long x, long y) {
        long d = y.to!string
            .length
            .to!long, z = y;
        return x * (10 ^^ d) + z;
    }

    long[] L;

    void f(long x) {
        if (x != 0) {
            L ~= x;
        }

        for (long i = 0;; ++i) {
            long y = concat(x, 1L << i);
            if (y > MAX) {
                break;
            }

            f(y);
        }
    }

    f(0);

    long[] U = L.sort.uniq.array;

    long res = U[N - 1];
    res.writeln;
}
