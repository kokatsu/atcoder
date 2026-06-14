import std;

void main() {
    int n;
    readfln("%d", n);

    int[] x = new int[](n), y = new int[](n);
    foreach (i; 0 .. n) {
        readfln("%d %d", x[i], y[i]);
    }

    zip(x, y).sort!((a, b) => a[0] < b[0]);

    int res, m = n + 1;
    foreach (i; 0 .. n) {
        if (y[i] < m) {
            ++res;
            m = y[i];
        }
    }

    res.writeln;
}
