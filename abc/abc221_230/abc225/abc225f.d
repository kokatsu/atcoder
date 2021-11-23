import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        S[i] = readln.chomp;
    }

    S.sort!"a ~ b < b ~ a";
    
    auto dp = new string[][](N+1, K+1);
    foreach (i; 0 .. N+1) {
        dp[i][] = ('z' + 1).to!dchar.to!string;
    }
    dp[N][0] = "";

    foreach_reverse (i; 0 .. N) {
        foreach (j; 0 .. K+1) {
            dp[i][j] = min(dp[i][j], dp[i+1][j]);

            if (j == 0) {
                continue;
            }

            dp[i][j] = min(dp[i][j], S[i]~dp[i+1][j-1]);
        }
    }

    dp[0][K].writeln;
}