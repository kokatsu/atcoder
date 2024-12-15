import std;

void main() {
    string S = readln.chomp;

    long M = 998244353;

    auto len = S.length;

    auto pow2 = new long[](len);
    pow2[0] = 1;
    foreach (i; 1 .. len) {
        pow2[i] = pow2[i - 1] * 2 % M;
    }

    long res, coef = 1;
    foreach_reverse (i, d; S) {
        res = (res + pow2[i] * (d - '0') * coef) % M;
        coef = (coef * 10 + pow2[len - i - 1]) % M;
    }

    res.writeln;
}
