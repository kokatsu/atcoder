import std;

enum long MOD = 10L ^^ 9 + 7L;

void main() {
    long A, B, C;
    readf("%d %d %d\n", A, B, C);

    long res = (A * B % MOD) * C % MOD;
    res.writeln;
}
