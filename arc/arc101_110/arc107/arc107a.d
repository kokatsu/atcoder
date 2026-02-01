import std;

enum uint MOD = 998_244_353;

void main() {
    long A, B, C;
    readfln("%d %d %d", A, B, C);

    long inv2 = powmod(2U, MOD - 2, MOD).to!long;

    long X = (C % MOD) * ((C + 1) % MOD) % MOD * inv2 % MOD;
    long Y = (B % MOD) * ((B + 1) % MOD) % MOD * inv2 % MOD * X % MOD;

    long res = (A % MOD) * ((A + 1) % MOD) % MOD * inv2 % MOD * Y % MOD;
    res.writeln;
}
