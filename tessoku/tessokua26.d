import std;

void main() {
    int Q;
    readf("%d\n", Q);

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

    foreach (_; 0 .. Q) {
        int X;
        readf("%d\n", X);

        writeln(sieve[X] ? "Yes" : "No");
    }
}
