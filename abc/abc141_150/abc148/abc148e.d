import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    if (N % 2 == 0) {
        long d = 5;

        while (d <= N) {
            res += ((N / d) / 2);
            d *= 5;
        }
    }

    res.writeln;
}
