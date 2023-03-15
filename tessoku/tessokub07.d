import std;

void main() {
    int T, N;
    readf("%d\n%d\n", T, N);

    auto dp = new int[](T+1);
    foreach (_; 0 .. N) {
        int L, R;
        readf("%d %d\n", L, R);

        ++dp[L], --dp[R];
    }

    foreach (i; 0 .. T) dp[i+1] += dp[i];

    writefln("%(%s\n%)", dp[0..T]);
}