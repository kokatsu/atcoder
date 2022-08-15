import std;

void main() {
    int H, N;
    readf("%d %d\n", H, N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    int L = int.max / 2;

    auto dp = new int[](H+1);
    dp[0..H] = L;
    foreach_reverse (i; 1 .. H+1) {
        foreach (a, b; zip(A, B)) {
            int j = max(0, i-a);
            dp[j] = min(dp[j], dp[i]+b);
        }
    }

    int res = dp[0];
    res.writeln;
}