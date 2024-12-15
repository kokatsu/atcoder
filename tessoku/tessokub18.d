import std;

void main() {
    int N, S;
    readf("%d %d\n", N, S);

    auto A = readln.chomp.split.to!(int[]);

    auto dp = new bool[][](N + 1, S + 1);
    dp[0][0] = true;
    foreach (i, a; A) {
        dp[i + 1][] = dp[i][];

        foreach_reverse (j; 0 .. S - a + 1) {
            if (!dp[i][j])
                continue;

            dp[i + 1][j + a] = true;
        }
    }

    if (!dp[N][S]) {
        writeln(-1);
        return;
    }

    int num = S;
    int[] res;
    foreach_reverse (i, a; A) {
        if (num - a >= 0 && dp[i][num - a]) {
            num -= a;
            res ~= i.to!int + 1;
        }
    }

    res.reverse;

    res.length.writeln;
    writefln("%(%s %)", res);
}
