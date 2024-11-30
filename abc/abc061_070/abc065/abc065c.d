import std;

enum long MOD = 10L ^^ 9 + 7;

long factorial(long x) {
    return x.iota.array.fold!((a, b) => a * (b + 1) % MOD)(1L);
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long res;
    if (N == M) {
        res = factorial(N) * factorial(M) * 2 % MOD;
    }
    else if (abs(N-M) == 1) {
        res = factorial(N) * factorial(M) % MOD;
    }

    res.writeln;
}