import std;

void main() {
    auto S = readln.chomp;

    auto N = S.length;

    long M = 10 ^^ 9 + 7, L = 13;

    void addMod(ref long x, long y) {
        x = (x + y) % M;
    }

    auto dp = new long[][](N+1, L);
    dp[0][0] = 1;
    foreach (i, s; S) {
        foreach (j; 0 .. L) {
            if (s == '?') {
                foreach (k; 0 .. 10) {
                    addMod(dp[i+1][(j*10+k)%L], dp[i][j]);
                }
            }
            else {
                addMod(dp[i+1][(j*10+(s-'0'))%L], dp[i][j]);
            }
        }
    }

    long res = dp[N][5];
    res.writeln;
}