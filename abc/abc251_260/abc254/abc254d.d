import std;

void main() {
    long N;
    readf("%d\n", N);

    auto sieve = new bool[](N + 1);
    sieve[2 .. N + 1] = true;
    long d = 2;
    while (d * d <= N) {
        if (sieve[d]) {
            foreach (i; iota(d * d, N + 1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(N + 1).filter!(i => sieve[i]).array;
    auto len1 = primes.length.to!long;

    auto isSquare = new bool[](N + 1);
    d = 1;
    while (d * d <= N) {
        isSquare[d * d] = true;
        ++d;
    }

    auto squares = iota(N + 1).filter!(i => isSquare[i]).array;
    auto len2 = squares.length.to!long;

    long res;

    void f(long x, long y) {
        ++res;
        foreach (i; y .. len1) {
            long p = x * primes[i] ^^ 2;
            if (p > N)
                break;
            f(p, i);
        }
    }

    foreach (i; 1 .. N + 1) {
        long num = i, p = 1;
        while (p < len2 && num >= squares[p]) {
            while (num % squares[p] == 0) {
                num /= squares[p];
            }
            ++p;
        }

        f(num, 0);
    }

    res.writeln;
}
