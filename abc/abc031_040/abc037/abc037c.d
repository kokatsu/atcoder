import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(long[]);

    long res, S;
    foreach (i, x; a) {
        S += x;

        if (i >= K - 1) {
            res += S;
            S -= a[i-K+1];
        }
    }

    res.writeln;
}