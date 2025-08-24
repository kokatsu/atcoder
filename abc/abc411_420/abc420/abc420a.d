import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    int res = (X + Y - 1) % 12 + 1;
    res.writeln;
}
