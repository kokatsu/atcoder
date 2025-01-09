import std;

void main() {
    long X, K;
    readf("%d %d\n", X, K);

    long res = X, U = 10, L = 1;
    foreach (i; 0 .. K) {
        long d = (res % U) / L;
        if (d >= 5) {
            res += U;
        }
        res -= d * L;
        U *= 10, L *= 10;
    }

    res.writeln;
}
