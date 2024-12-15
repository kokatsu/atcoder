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

    foreach (i, s; sieve) {
        if (s)
            i.writeln;
    }
}
