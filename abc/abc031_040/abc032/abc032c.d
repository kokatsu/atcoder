import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    bool existsZero;
    auto s = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", s[i]);

        existsZero |= (s[i] == 0);
    }

    if (existsZero) {
        N.writeln;
        return;
    }

    long res, mul = 1, r;
    foreach (l; 0 .. N) {
        while (r < N && mul * s[r] <= K) {
            mul *= s[r++];
        }

        if (l < r) {
            res = max(res, r-l);
            mul /= s[l];
        }
    }

    res.writeln;
}