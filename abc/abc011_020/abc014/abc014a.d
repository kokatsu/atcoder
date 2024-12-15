import std;

void main() {
    int a, b;
    readf("%d\n%d\n", a, b);

    int res = (b - a % b) % b;
    res.writeln;
}
