import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long S = M.to!real
        .sqrt
        .floor
        .to!long;
    long[] factors;
    foreach (i; 1 .. S + 1) {
        if (M % i != 0)
            continue;

        factors ~= i;
        if (i * i != M)
            factors ~= M / i;
    }

    factors.sort!"a > b";

    long res;
    foreach (f; factors) {
        long num = f * N;
        if (num > M)
            continue;

        if ((M - num) % f == 0) {
            res = f;
            break;
        }
    }

    res.writeln;
}
