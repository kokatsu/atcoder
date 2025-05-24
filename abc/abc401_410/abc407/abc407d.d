import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto A = new long[][](H);
    foreach (i; 0 .. H) {
        A[i] = readln.chomp.split.to!(long[]);
    }

    long N = H * W;
    long L = 1 << N;

    auto dp = new long[](L);
    dp[] = -1;

    long calc(long x) {
        long ret;
        foreach (i; 0 .. H) {
            foreach (j; 0 .. W) {
                if (!(x & (1 << (i * W + j)))) {
                    ret ^= A[i][j];
                }
            }
        }
        return ret;
    }

    void dfs(long x) {
        if (dp[x] != -1) {
            return;
        }

        dp[x] = calc(x);

        foreach (i; 0 .. H - 1) {
            foreach (j; 0 .. W) {
                long p1 = i * W + j;
                long p2 = (i + 1) * W + j;
                if (!(x & (1 << p1)) && !(x & (1 << p2))) {
                    long p = x | (1 << p1) | (1 << p2);
                    dfs(p);
                    dp[x] = max(dp[x], dp[p]);
                }
            }
        }

        foreach (i; 0 .. H) {
            foreach (j; 0 .. W - 1) {
                long p1 = i * W + j;
                long p2 = i * W + j + 1;
                if (!(x & (1 << p1)) && !(x & (1 << p2))) {
                    long p = x | (1 << p1) | (1 << p2);
                    dfs(p);
                    dp[x] = max(dp[x], dp[p]);
                }
            }
        }
    }

    dfs(0);

    long res = dp[0];
    res.writeln;
}
