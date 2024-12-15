import std;

void main() {
    long n, q;
    readf("%d %d\n", n, q);

    auto a = new long[](q);
    foreach (i; 0 .. q)
        readf("%d\n", a[i]);

    long f(long x, long y = 1) {
        if (y > n)
            return 0;
        if (x < 0)
            return 1;
        if (y % a[x] == 0)
            return f(x - 1, y * a[x]);
        return f(x - 1, y) + f(x - 1, y * a[x]);
    }

    long res = f(q - 1);
    res.writeln;
}
