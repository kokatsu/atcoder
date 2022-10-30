import std;

enum long MOD = 10 ^^ 9 + 7;

void mulMod(ref long x, long y) {
    x = (x * y) % MOD;
}

void main() {
    long N;
    readf("%d\n", N);

    auto T = new long[](N);
    foreach (i; 0 .. N) readf("%d\n", T[i]);

    T.sort;

    auto G = T.group.array;

    long time, mn, comb = 1;
    foreach (g; G) {
        auto x = g[0].to!long, y = g[1].to!long;
        foreach (i; 0 .. y) {
            time += x, mn += time, mulMod(comb, y-i);
        }
    }

    mn.writeln;
    comb.writeln;
}