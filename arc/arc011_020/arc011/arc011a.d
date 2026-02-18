import std;

void main() {
    int m, n, N;
    readfln("%d %d %d", m, n, N);

    int res = N, rem;
    while (N > 0) {
        rem += N;

        int D = rem / m * n;

        res += D;
        N = D;
        rem %= m;
    }

    res.writeln;
}
