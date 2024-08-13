import std;

void main() {
    int X, Y, Z;
    readf("%d %d %d\n", X, Y, Z);

    int res = Z + X >= Y ? Z + X : Y;
    res.writeln;
}