import std;

enum long MOD = 10L ^^ 9;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long L = max(N, K) + 1;
    auto A = new long[](L + 1);
    foreach (i; 0 .. L) {
        if (i < K) {
            A[i] = 1;
        }
        else if (i == K) {
            A[i] = K;
        }
        else {
            A[i] = (A[i - 1] * 2 - A[i - K - 1] + MOD) % MOD;
        }
    }

    long res = A[N];
    res.writeln;
}
