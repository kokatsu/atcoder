import std;

enum long L = 2 * 10 ^^ 6 + 1;

void main() {
    long N;
    readfln("%d", N);

    bool[] isPrime = new bool[](L);
    isPrime[2 .. $] = true;
    foreach (i; 2 .. L) {
        if (!isPrime[i]) {
            continue;
        }

        foreach (k; iota(i * 2, L, i)) {
            isPrime[k] = false;
        }
    }

    long[] primes = L.iota.filter!(i => isPrime[i]).array;
    long[] p2 = primes.map!(p => p ^^ 2).array;
    auto s = p2.dup.assumeSorted;

    long res;
    foreach (x; p2) {
        long p8 = x ^^ 4;
        if (p8 > N) {
            break;
        }
        ++res;
    }

    foreach (i, x; p2) {
        auto lb = s.lowerBound(N / x + 1);
        res += max(lb.length.to!long - i.to!long - 1, 0);
    }

    res.writeln;
}
