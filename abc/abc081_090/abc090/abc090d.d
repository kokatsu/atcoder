import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res;
    if (K > 0) {
        foreach (i; K + 1 .. N + 1) {
            long d = N / i, r = N % i;
            res += d * (i - K) + max(0, r - K + 1);
        }
    }
    else {
        res = N * N;
    }

    res.writeln;
}
