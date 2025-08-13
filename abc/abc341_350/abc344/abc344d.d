import std;

enum int M = int.max / 4;

void main() {
    string T;
    int N;
    readf("%s\n%d\n", T, N);

    size_t L = T.length;
    int[][] dp = new int[][](N + 1, L + 1);
    foreach (i; 0 .. N + 1) {
        dp[i][] = M;
    }
    dp[0][0] = 0;

    foreach (i; 0 .. N) {
        string[] R = readln.chomp.split;

        dp[i + 1] = dp[i].dup;

        foreach (s; R[1 .. $]) {
            size_t l = s.length;

            foreach (j; 0 .. L + 1) {
                if (j + l > L) {
                    break;
                }

                if (s == T[j .. j + l]) {
                    dp[i + 1][j + l] = min(dp[i + 1][j + l], dp[i][j] + 1);
                }
            }
        }
    }

    int res = dp[N][L] < M ? dp[N][L] : -1;
    res.writeln;
}
