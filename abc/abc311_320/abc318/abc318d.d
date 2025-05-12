import std;
import core.bitop;

void main() {
    long N;
    readf("%d\n", N);

    auto D = new long[][](N - 1, N);
    foreach (i; 0 .. N - 1) {
        D[i][i + 1 .. N] = readln.chomp.split.to!(long[]);
    }

    long L = 1 << N;
    auto dp = new long[](L);
    foreach (i; 0 .. L - 1) {
        long p = bsf(~i);
        if (p >= N - 1) {
            continue;
        }

        foreach (q; 0 .. N) {
            if ((i >> q & 1) == 1) {
                continue;
            }

            long m = i | (1 << p) | (1 << q);
            dp[m] = max(dp[m], dp[i] + D[p][q]);
        }
    }

    long res = dp[L - 1];
    res.writeln;
}
