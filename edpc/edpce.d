import std;

enum long L = 10 ^^ 5;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto dp = new long[](L+1);
    dp[1..L+1] = long.max / 2;
    foreach (_; 0 .. N) {
        long w, v;
        readf("%d %d\n", w, v);

        foreach_reverse (i; v .. L+1) {
            dp[i] = min(dp[i], dp[i-v]+w);
        }
    }

    long res;
    foreach_reverse (i, x; dp) {
        if (x <= W) {
            res = i;
            break;
        }
    }

    res.writeln;
}