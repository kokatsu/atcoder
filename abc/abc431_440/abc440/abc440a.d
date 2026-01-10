import std;

void main() {
    int X, Y;
    readfln("%d %d", X, Y);

    int res = X * (1 << Y);
    res.writeln;
}
