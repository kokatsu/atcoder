import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto S = readln.chomp;

    auto dp = new int[](N + 1);
    foreach (i; 1 .. N) {
        dp[i + 1] = dp[i];

        if (S[i - 1 .. i + 1] == "AC")
            ++dp[i + 1];
    }

    foreach (_; 0 .. Q) {
        int L, R;
        readf("%d %d\n", L, R);

        int res = dp[R] - dp[L];
        res.writeln;
    }
}
