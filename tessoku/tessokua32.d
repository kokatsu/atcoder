import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto dp = new bool[](N+1);
    foreach (i; 0 .. N+1) {
        if ((i >= A && !dp[i-A]) || (i >= B && !dp[i-B])) dp[i] = true;
    }

    writeln(dp[N] ? "First" : "Second");
}