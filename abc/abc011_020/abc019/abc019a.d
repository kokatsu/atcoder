import std;

void main() {
    int a, b, c;
    readf("%d %d %d\n", a, b, c);

    int res = a + b + c - min(a, b, c) - max(a, b, c);
    res.writeln;
}
