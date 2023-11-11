import std;

void main() {
    int x, y;
    readf("%d %d\n", x, y);

    int z = x.abs * 2;

    int res = y / 2;
    if (y < z || y % 2 == 1 || (y - z) % 4 != 0) {
        res = -1;
    }

    res.writeln;
}