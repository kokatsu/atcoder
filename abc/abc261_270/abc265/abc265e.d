import std;

struct Coord {
    long X, Y;
}

enum long MOD = 998244353;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long A, B, C, D, E, F;
    readf("%d %d %d %d %d %d\n", A, B, C, D, E, F);

    bool[Coord] list;
    foreach (_; 0 .. M) {
        long X, Y;
        readf("%d %d\n", X, Y);

        list[Coord(X, Y)] = true;
    }

    auto dp = new long[][][](N + 1, N + 1, N + 1);
    dp[0][0][0] = 1;
    foreach (i; 0 .. N) {
        foreach_reverse (j; 0 .. N) {
            if (i < j)
                continue;

            foreach_reverse (k; 0 .. N) {
                if (i < j + k)
                    continue;

                long l = i - j - k;
                long x = A * j + C * k + E * l, y = B * j + D * k + F * l;

                long x1 = x + A, y1 = y + B;
                if (!(Coord(x1, y1) in list)) {
                    addMod(dp[i + 1][j + 1][k], dp[i][j][k]);
                }

                long x2 = x + C, y2 = y + D;
                if (!(Coord(x2, y2) in list)) {
                    addMod(dp[i + 1][j][k + 1], dp[i][j][k]);
                }

                long x3 = x + E, y3 = y + F;
                if (!(Coord(x3, y3) in list)) {
                    addMod(dp[i + 1][j][k], dp[i][j][k]);
                }
            }
        }
    }

    long res;
    foreach (i; 0 .. N + 1) {
        foreach (j; 0 .. N + 1) {
            addMod(res, dp[N][i][j]);
        }
    }

    res.writeln;
}
