import std;

void main() {
    long N;
    readf("%d\n", N);

    long[long] factors;
    long d = 2;
    while (d * d <= N) {
        while (N % d == 0) {
            ++factors[d];
            N /= d;
        }

        ++d;
    }
    if (N > 1)
        ++factors[N];

    long res;
    foreach (v; factors.byValue) {
        long num = v;
        foreach (i; 1 .. v + 1) {
            if (num < i)
                break;

            num -= i;
            ++res;
        }
    }

    res.writeln;
}
