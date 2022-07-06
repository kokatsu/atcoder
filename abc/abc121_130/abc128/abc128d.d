import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto V = readln.chomp.split.to!(long[]);

    long res, M = min(N, K);
    foreach (i; 0 .. N+1) {
        foreach (j; 0 .. N+1) {
            long len = i + j;
            if (len > M) break;

            long[] D = V[0..i] ~ V[N-j..$];
            D.sort;

            long num = D.sum, cnt = K - len;
            foreach (k, d; D) {
                if (k >= cnt || d >= 0) break;
                num -= d;
            }

            res = max(res, num);
        }
    }

    res.writeln;
}