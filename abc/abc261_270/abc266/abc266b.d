import std;

enum long MOD = 998244353;

void main() {
    long N;
    readf("%d\n", N);

    long res = N % MOD;
    if (res < 0) res += MOD;

    res.writeln;
}