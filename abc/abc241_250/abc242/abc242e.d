import std;

enum long MOD = 998244353;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N;
        readf("%d\n", N);

        string S;
        readf("%s\n", S);

        long res, H = (N + 1) / 2;
        foreach (i; 0 .. H) {
            long cnt = S[i] - 'A';
            res = (res * 26 + cnt) % MOD;
        }

        bool isOK = true;
        foreach (i; H .. N) {
            if (S[i] == S[N - i - 1])
                continue;
            else {
                isOK = (S[i] > S[N - i - 1]);
                break;
            }
        }

        if (isOK)
            res = (res + 1) % MOD;
        res.writeln;
    }
}
