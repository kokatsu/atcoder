import std;

void main() {
    long N;
    readf("%d\n", N);

    long L = 55555;

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

    auto res = iota(1, L + 1).stride(5).filter!(x => sieve[x]).take(N);
    writefln("%(%s %)", res);
}
