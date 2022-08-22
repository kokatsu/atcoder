import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] res;
    long d = 1;
    while (d * d <= N) {
        if (N % d == 0) {
            res ~= d;
            if (d * d != N) res ~= N / d;
        }

        ++d;
    }

    res.sort;

    foreach (r; res) r.writeln;
}