import std;

enum string ERR = "E";

void main() {
    int N, S;
    readf("%d %d\n", N, S);

    auto a = new int[](N), b = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", a[i], b[i]);

    auto list = new string[][](N + 1, S + 1);
    auto dp = new bool[][](N + 1, S + 1);
    dp[0][0] = true;
    foreach (i; 0 .. N) {
        foreach_reverse (j; 0 .. S + 1) {
            if (j + a[i] <= S) {
                if (dp[i][j]) {
                    dp[i + 1][j + a[i]] = true;
                    list[i + 1][j + a[i]] = list[i][j] ~ "H";
                }
            }

            if (j + b[i] <= S) {
                if (dp[i][j]) {
                    dp[i + 1][j + b[i]] = true;
                    list[i + 1][j + b[i]] = list[i][j] ~ "T";
                }
            }
        }
    }

    bool isOK = dp[N][S];
    if (isOK) {
        writeln("Yes");
        list[N][S].writeln;
    }
    else {
        writeln("No");
    }
}
