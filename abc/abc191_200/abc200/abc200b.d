import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res = N, M = 200, L = 1000;
    foreach (i; 0 .. K) {
        if (res % M == 0)
            res /= M;
        else
            res = res * L + M;
    }

    res.writeln;
}
