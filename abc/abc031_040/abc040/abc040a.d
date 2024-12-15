import std;

void main() {
    int n, x;
    readf("%d %d\n", n, x);

    int res = min(x - 1, n - x);
    res.writeln;
}
