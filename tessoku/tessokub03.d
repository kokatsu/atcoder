import std;

enum int L = 1000;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto dp = new bool[][](4, L + 1);
    dp[0][0] = true;
    foreach (a; A) {
        foreach_reverse (i; 0 .. 3) {
            foreach (j; 0 .. L) {
                if (j + a > L)
                    break;
                if (!dp[i][j])
                    continue;

                dp[i + 1][j + a] = true;
            }
        }
    }

    writeln(dp[3][L] ? "Yes" : "No");
}
