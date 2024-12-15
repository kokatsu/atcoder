import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (i; iota(1, N + 1, 2)) {
        int cnt, d = 1;
        while (d * d <= i) {
            if (i % d == 0) {
                ++cnt;
                if (d * d != i)
                    ++cnt;
            }

            ++d;
        }

        if (cnt == 8)
            ++res;
    }

    res.writeln;
}
