import std;

void main() {
    int X;
    readf("%d\n", X);

    int res = (X / 500) * 1000 + ((X % 500) / 5) * 5;
    res.writeln;
}