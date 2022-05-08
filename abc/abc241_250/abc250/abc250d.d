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
    auto len = primes.length.to!long;

    long res;
    foreach (long i, p; primes) {
        long num = N / p;
        long ok = i, ng = len;
        while (ng - ok > 1) {
            auto mid = (ng + ok) / 2;
            auto q = primes[mid];
            (num >= q ^^ 3 ? ok : ng) = mid;
        }

        res += ok - i;
    }

    res.writeln;
}