import std;

void main() {
    int N;
    readf("%d\n", N);

    auto dp = new int[][](N + 1, N + 1);
    foreach (i; 1 .. N + 1) {
        auto D = readln.chomp.split.to!(int[]);
        dp[i][1 .. $] = D;
    }

    foreach (i; 1 .. N + 1) {
        foreach (j; 1 .. N + 1) {
            dp[i][j] += dp[i][j - 1];
        }
    }

    foreach (i; 1 .. N + 1) {
        foreach (j; 1 .. N + 1) {
            dp[i][j] += dp[i - 1][j];
        }
    }

    int L = N * N + 1;
    auto list = new int[](L);
    foreach (i; 0 .. N) {
        foreach (j; i + 1 .. N + 1) {
            foreach (k; 0 .. N) {
                foreach (l; k + 1 .. N + 1) {
                    int S = (j - i) * (l - k);
                    int num = dp[j][l] - dp[i][l] - dp[j][k] + dp[i][k];
                    list[S] = max(list[S], num);
                }
            }
        }
    }

    foreach (i; 1 .. L) {
        list[i] = max(list[i], list[i - 1]);
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int P;
        readf("%d\n", P);

        list[P].writeln;
    }
}
