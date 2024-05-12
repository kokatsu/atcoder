import std;

void main() {
    int n;
    readf("%d\n", n);

    int m = (n - 1) % 40;

    int res = m < 20 ? m + 1 : 40 - m;
    res.writeln;
}