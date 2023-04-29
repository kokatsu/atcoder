import std;

void main() {
    long N;
    readf("%d\n", N);

    long L = 10 ^^ 6;
    auto sieve = new bool[](L+1);
    sieve[2..L+1] = true;
    long d = 2;
    while (d * d <= L) {
        if (sieve[d]) {
            foreach (i; iota(d*d, L+1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(L+1).filter!(i => sieve[i]).array;
    auto sorted = primes.assumeSorted;
    auto squares = primes.map!(x => x * x).array;

    long res;
    foreach (c, c2; zip(primes, squares)) {
        foreach (a, a2; zip(primes, squares)) {
            if (a >= c) break;
            if (a2 * c2 >= N) break;

            long b = N / (c2 * a2);
            if (b <= a) continue;

            auto lba = sorted.lowerBound(a+1);
            auto lbc = sorted.lowerBound(min(c, b+1));

            res += lbc.length.to!long - lba.length.to!long;
        }
    }

    res.writeln;
}