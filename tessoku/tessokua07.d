import std;

void main() {
    int D, N;
    readf("%d\n%d\n", D, N);

    auto dp = new int[](D + 1);
    foreach (_; 0 .. N) {
        int L, R;
        readf("%d %d\n", L, R);

        ++dp[L - 1], --dp[R];
    }

    foreach (i; 0 .. D) {
        dp[i + 1] += dp[i];
    }

    writefln("%(%s\n%)", dp[0 .. D]);
}
