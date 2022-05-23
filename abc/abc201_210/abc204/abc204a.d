import std;

void main() {
    int x, y;
    readf("%d %d\n", x, y);

    int res = (x == y ? x : 3 - x - y);
    res.writeln;
}