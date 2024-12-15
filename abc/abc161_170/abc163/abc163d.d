import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long M = 10 ^^ 9 + 7;

    long res;
    long l, r;
    foreach (i; 0 .. N + 1) {
        l += i, r += N - i;

        if (i >= K - 1)
            res = (res + r - l + 1) % M;
    }

    res.writeln;
}
