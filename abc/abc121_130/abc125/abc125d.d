import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    bool zero, minus;
    long res, mn = long.max;
    foreach (a; A) {
        if (a == 0) zero = true;
        if (a < 0) minus ^= true;

        res += a.abs;
        mn = min(mn, a.abs);
    }

    if (!zero && minus) res -= mn * 2;

    res.writeln;
}