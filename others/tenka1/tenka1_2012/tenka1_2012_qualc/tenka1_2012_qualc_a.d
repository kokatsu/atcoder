import std;

void main() {
    int n;
    readf("%d\n", n);

    auto sieve = new bool[](n);
    sieve[min(2, n)..n] = true;
    int d = 2;
    while (d * d < n) {
        if (sieve[d]) {
            foreach (i; iota(d*d, n, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto res = sieve.count(true);
    res.writeln;
}