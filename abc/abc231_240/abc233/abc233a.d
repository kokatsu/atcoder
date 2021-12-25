import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    if (X >= Y) {
        0.writeln;
        return;
    }

    int d = Y - X;
    int res = (d + 9) / 10;
    res.writeln;
}