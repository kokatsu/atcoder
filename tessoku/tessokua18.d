import std;

void main() {
    int N, S;
    readf("%d %d\n", N, S);

    auto A = readln.chomp.split.to!(int[]);

    auto dp = new bool[](S+1);
    dp[0] = true;
    foreach (a; A) {
        foreach_reverse (i; 0 .. S-a+1) {
            if (!dp[i]) continue;

            dp[i+a] = true;
        }
    }

    writeln(dp[S] ? "Yes" : "No");
}