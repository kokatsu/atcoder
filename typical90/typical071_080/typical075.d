import std;

void main() {
    long N;
    readf("%d\n", N);

    long cnt, d = 2;
    while (d * d <= N) {
        while (N % d == 0) {
            N /= d;
            ++cnt;
        }

        ++d;
    }

    if (N > 1) {
        ++cnt;
    }

    long res;
    while ((1 << res) < cnt) {
        ++res;
    }

    res.writeln;
}
