import std;

void main() {
    long N, A;
    readf("%d %d\n", N, A);

    auto x = readln.chomp.split.to!(long[]);

    long mx = x.sum;
    auto dp = new long[][](N+1, mx+1);
    dp[0][0] = 1;
    foreach (y; x) {
        foreach_reverse (i; 0 .. N) {
            foreach (j; 0 .. mx+1) {
                if (j + y > mx) continue;
                dp[i+1][j+y] += dp[i][j];
            }
        }
    }

    long res;
    foreach (i; 1 .. N+1) {
        foreach (j; 0 .. mx+1) {
            if (i * A == j) res += dp[i][j];
        }
    }

    res.writeln;
}