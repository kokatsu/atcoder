import std;

void main() {
    int X;
    readf("%d\n", X);

    int N = 2 * 10 ^^ 5;
    auto sieve = new bool[](N + 1);
    sieve[2 .. N + 1] = true;
    int d = 2;
    while (d * d <= N) {
        if (sieve[d]) {
            foreach (i; iota(d * d, N + 1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    int res = X;
    while (!sieve[res]) {
        ++res;
    }

    res.writeln;
}
