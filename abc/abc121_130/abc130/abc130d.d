import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(long[]);

    long res, S, r;
    foreach (l; 0 .. N) {
        while (S < K && r != N) {
            S += a[r];
            ++r;
        }

        if (S >= K) res += N - r + 1;
        S -= a[l];
    }

    res.writeln;
}