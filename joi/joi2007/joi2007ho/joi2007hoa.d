import std;

void main() {
    long n, k;
    readf("%d %d\n", n, k);

    auto c = new long[](n+1);
    long res = long.min;
    foreach (i; 1 .. n+1) {
        readf("%d\n", c[i]);

        c[i] += c[i-1];

        if (i >= k) {
            res = max(res, c[i]-c[i-k]);
        }
    }

    res.writeln;
}