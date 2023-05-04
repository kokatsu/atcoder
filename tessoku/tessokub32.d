import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(int[]);

    auto dp = new bool[](N+1);
    foreach (i; 0 .. N+1) {
        foreach (x; a) {
            if (i >= x && !dp[i-x]) dp[i] = true;
        }
    }

    writeln(dp[N] ? "First" : "Second");
}