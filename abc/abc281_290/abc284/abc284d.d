import std;

void main() {
    long T;
    readf("%d\n", T);

    long L = 3 * 10 ^^ 6;
    auto sieve = new bool[](L + 1);
    sieve[2 .. L + 1] = true;
    long d = 2;
    while (d * d <= L) {
        if (sieve[d]) {
            foreach (i; iota(d * d, L + 1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(L + 1).filter!(i => sieve[i]).array;

    foreach (_; 0 .. T) {
        long N;
        readf("%d\n", N);

        foreach (q; primes) {
            if (N % q == 0) {
                long M = N / q;
                long S = M.to!real
                    .sqrt
                    .floor
                    .to!long;
                if (S * S == M) {
                    writeln(S, " ", q);
                    break;
                }
            }

            long q2 = q * q;
            if (N % q2 == 0) {
                long M = N / q2;
                writeln(q, " ", M);
                break;
            }
        }
    }
}
