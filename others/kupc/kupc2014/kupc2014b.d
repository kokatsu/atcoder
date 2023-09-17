import std;

void main() {
    int L = 10 ^^ 3;
    auto sieve = new bool[](L+1);
    sieve[2..L+1] = true;
    int d = 2;
    while (d * d <= L) {
        if (sieve[d]) {
            foreach (i; iota(d*d, L+1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(L+1).filter!(i => sieve[i]).array;

    int res = 1;
    foreach (p; primes) {
        int a = 1, b = p;
        while (b <= L) {
            writefln("? %d", b);
            stdout.flush;

            char c;
            readf("%c\n", c);

            if (c == 'N') break;

            a *= p, b *= p;
        }

        res *= a;
    }

    writefln("! %d", res);
}