import std;

void main() {
    long X, Y;
    readf("%d %d\n", X, Y);

    long f(long x) {
        long ret;
        while (x > 0) {
            ret = ret * 10 + x % 10;
            x /= 10;
        }
        return ret;
    }

    long[] a = new long[](10);
    a[0] = X, a[1] = Y;
    foreach (i; 2 .. 10) {
        a[i] = f(a[i - 1] + a[i - 2]);
    }

    long res = a[9];
    res.writeln;
}
