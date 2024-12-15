import std;

void main() {
    int a, b, c, d;
    readf("%d %d\n%d %d\n", a, b, c, d);

    int res = a * d - b * c;
    res.writeln;
}
