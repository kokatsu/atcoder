import std;

enum long MOD = 10L ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    long res = iota(1, N + 1).fold!((a, b) => a * b % MOD);
    res.writeln;
}
