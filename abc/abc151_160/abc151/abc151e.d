import std;

void main() {
    ulong N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    ulong M = 10 ^^ 9 + 7;

    auto P = new ulong[](N + 1);
    P[K] = 1;
    foreach (i; K + 1 .. N + 1) {
        long c = powmod(i - K, M - 2, M).to!long;
        P[i] = ((P[i - 1] * (i - 1)) % M) * c % M;
    }

    A.sort;

    long res;
    foreach (i, a; A) {
        res = (res + ((a + M) % M) * (P[i + 1] - P[N - i] + M) % M) % M;
    }

    res.writeln;
}
