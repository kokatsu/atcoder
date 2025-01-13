import std;

enum int N = 9;

void main() {
    string[N] S;
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    int res;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (S[i][j] != '#') {
                continue;
            }

            foreach (k; i + 1 .. N) {
                foreach (l; j .. N) {
                    if (S[k][l] != '#') {
                        continue;
                    }

                    int x = k - i, y = l - j;

                    int m = k - y, n = l + x;
                    if (m < 0 || N <= m || n < 0 || N <= n || S[m][n] != '#') {
                        continue;
                    }

                    int o = m - x, p = n - y;
                    if (o < 0 || N <= o || p < 0 || N <= p || S[o][p] != '#') {
                        continue;
                    }

                    ++res;
                }
            }
        }
    }

    res.writeln;
}
