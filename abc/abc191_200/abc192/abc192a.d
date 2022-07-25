import std;

void main() {
    int X;
    readf("%d\n", X);

    int Y = ((X + 100) / 100) * 100;

    int res = Y - X;
    res.writeln;
}