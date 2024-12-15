import std;

enum int MOD = 10007;

void main() {
    int n;
    readf("%d\n", n);

    if (n < 3) {
        writeln(0);
        return;
    }

    auto a = new int[](n + 1);
    a[3] = 1;
    foreach (i; 4 .. n + 1) {
        a[i] = (a[i - 1] + a[i - 2] + a[i - 3]) % MOD;
    }

    int res = a[n];
    res.writeln;
}
