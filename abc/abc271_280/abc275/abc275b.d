import std;

enum long MOD = 998_244_353;

void main() {
    long A, B, C, D, E, F;
    readf("%d %d %d %d %d %d\n", A, B, C, D, E, F);

    long L = ((((A % MOD) * (B % MOD)) % MOD) * (C % MOD)) % MOD;
    long R = ((((D % MOD) * (E % MOD)) % MOD) * (F % MOD)) % MOD;

    long res = (MOD + L - R) % MOD;
    res.writeln;
}
