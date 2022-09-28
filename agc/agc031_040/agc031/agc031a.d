import std;

enum long MOD = 10 ^^ 9 + 7;

void mulMod(ref long x, long y) {
    x = (x * y) % MOD;
}

void main() {
    long N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    auto G = S.group.array;

    long res = 1;
    foreach (g; G) {
        mulMod(res, g[1].to!long+1);
    }

    res = (res + MOD - 1) % MOD;

    res.writeln;
}