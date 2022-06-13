import std;

void main() {
    long n, m;
    readf("%d %d\n", n, m);

    auto x = readln.chomp.split.to!(long[]);
    auto y = readln.chomp.split.to!(long[]);

    long MOD = 10 ^^ 9 + 7;

    void addMod(ref long x, long y) {
        x = (x + y) % MOD;
    }

    x.sort;
    y.sort;

    long u;
    foreach (i; 1 .. n) {
        long d = (x[i] - x[i-1]) * ((i * (n - i)) % MOD) % MOD;
        addMod(u, d);
    }

    long v;
    foreach (i; 1 .. m) {
        long d = (y[i] - y[i-1]) * ((i * (m - i)) % MOD) % MOD;
        addMod(v, d);
    }

    long res = u * v % MOD;
    res.writeln;
}