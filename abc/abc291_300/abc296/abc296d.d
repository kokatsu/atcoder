import std;

enum long S = 2 * 10 ^^ 6;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long res = -1;
    foreach (i; 1 .. S+1) {
        if (i > N) break;

        long d = (M + i - 1) / i;
        long m = i * d;
        if (1 <= d && d <= N) {
            if (res == -1) res = m;
            else res = min(res, m);
        }
    }

    res.writeln;
}