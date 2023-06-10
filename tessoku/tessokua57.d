import std;

const int L = 30;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    auto dp = new int[][](L, N);
    dp[0][] = A;
    foreach (i; 1 .. L) {
        foreach (j; 0 .. N) {
            dp[i][j] = dp[i-1][dp[i-1][j]];
        }
    }

    foreach (i; 0 .. Q) {
        int X, Y;
        readf("%d %d\n", X, Y);

        int res = X - 1;
        foreach_reverse (j; 0 .. L) {
            if ((Y >> j) & 1) res = dp[j][res];
        }

        ++res;

        res.writeln;
    }
}