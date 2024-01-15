import std;

void main() {
    string N;
    readf("%s\n", N);

    auto L = N.length.to!long;

    auto dp = new long[][][][](20, 200, 200, 2);
    long f(long a, long b, long c, long d, long e) {
        if (a == L) {
            return b == 0 && c == 0 ? 1 : 0;
        }
        if (dp[a][b][c][e] != -1) return dp[a][b][c][e];
        long ret, r = e == 1 ? N[a] - '0' : 9;
        foreach (i; 0 .. r+1) {
            if (b >= i) ret += f(a+1, b-i, (c*10+i)%d, d, (e&(i==r)).to!long);
        }
        dp[a][b][c][e] = ret;
        return ret;
    }

    long res;
    foreach (i; 1 .. 14*9) {
        foreach (ref d1; dp) {
            foreach (ref d2; d1) {
                foreach (ref d3; d2) {
                    d3[] = -1;
                }
            }
        }

        res += f(0, i, 0, i, 1);
    }

    res.writeln;
}