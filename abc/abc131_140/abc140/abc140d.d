import std;

void main() {
    int N, K;
    string S;
    readf("%d %d\n%s\n", N, K, S);

    int cnt;
    foreach (i; 1 .. N) {
        if (S[i] == S[i - 1])
            ++cnt;
    }

    int res = min(N - 1, cnt + K * 2);
    res.writeln;
}
