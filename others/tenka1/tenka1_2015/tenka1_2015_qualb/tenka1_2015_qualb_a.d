import std;

void main() {
    int n = 20;

    auto a = new int[](n);
    a[0] = a[1] = 100, a[2] = 200;
    foreach (i; 3 .. n) {
        a[i] = a[i - 1] + a[i - 2] + a[i - 3];
    }

    int res = a[n - 1];
    res.writeln;
}
