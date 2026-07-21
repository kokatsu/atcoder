import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    int[][] dp = new int[][](N, M);
    dp[0][A[0] ^ 1] = 1;
    foreach (i; 1 .. N) {
        foreach (j; 0 .. M) {
            int k = (M - abs(A[i] - j)) % M;
            int l = (B[i - 1] - A[i] - k + M) % M;
            dp[i][j] = dp[i - 1][l] + k;
        }
    }

    int res = dp[N - 1].minElement;
    res.writeln;
}
