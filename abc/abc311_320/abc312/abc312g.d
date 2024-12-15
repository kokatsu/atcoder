import std;

void main() {
    long N;
    readf("%d\n", N);

    auto edges = new long[][](N);
    foreach (_; 0 .. N - 1) {
        long A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        edges[A] ~= B, edges[B] ~= A;
    }

    auto cnts = new long[](N);
    cnts[] = 1;

    long res = N * (N - 1) * (N - 2) / 6;

    void f(long x, long y = -1) {
        long num = (N - 1) ^^ 2;
        foreach (e; edges[x]) {
            if (e == y)
                continue;

            f(e, x);
            num -= cnts[e] ^^ 2;
            cnts[x] += cnts[e];
        }

        if (y != -1)
            num -= (N - cnts[x]) ^^ 2;

        res -= num / 2;
    }

    f(0);

    res.writeln;
}
