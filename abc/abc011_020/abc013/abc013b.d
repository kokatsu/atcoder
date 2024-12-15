import std;

void main() {
    int a, b;
    readf("%d\n%d\n", a, b);

    int d = abs(a - b);

    int res = min(d, 10 - d);
    res.writeln;
}
