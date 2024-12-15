import std;

struct Fraction {
    long num;
    long den;
}

void main() {
    int N;
    readf("%d\n", N);

    long[Fraction] list;
    auto x = new long[](N), y = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", x[i], y[i]);
    }
    int res = N * (N - 1);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j) {
                continue;
            }

            long x1 = x[j] - x[i];
            long y1 = y[j] - y[i];

            long g = gcd(x1.abs, y1.abs);

            if (g > 0) {
                x1 /= g, y1 /= g;
            }
            ++list[Fraction(x1, y1)];
        }
    }

    list.length.writeln;
}
