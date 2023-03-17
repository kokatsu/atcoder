import std;

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    auto dp = new int[][](H, W);
    foreach (_; 0 .. N) {
        int A, B, C, D;
        readf("%d %d %d %d\n", A, B, C, D);

        --A, --B;

        ++dp[A][B];
        if (C < H) --dp[C][B];
        if (D < W) --dp[A][D];
        if (C < H && D < W) ++dp[C][D];
    }

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W-1) {
            dp[i][j+1] += dp[i][j];
        }
        if (i > 0) dp[i][] += dp[i-1][];
    }

    writefln("%(%(%s %)\n%)", dp);
}