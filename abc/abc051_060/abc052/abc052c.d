import std;

void main() {
    long N;
    readf("%d\n", N);

    enum long M = 10 ^^ 9 + 7;

    auto factors = new long[](N + 1);
    factors[] = 1;

    foreach (i; 2 .. N + 1) {
        long num = i, d = 2;
        while (d * d <= num) {
            while (num % d == 0) {
                ++factors[d];
                num /= d;
            }

            ++d;
        }

        if (num > 1)
            ++factors[num];
    }

    long res = factors.fold!((a, b) => (a * b) % M);
    res.writeln;
}
