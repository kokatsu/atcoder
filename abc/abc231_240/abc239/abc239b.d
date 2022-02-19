import std;

void main() {
    long X;
    readf("%d\n", X);

    if (X < 0 && X.abs % 10 != 0) {
        X -= 10;
    }

    long res = X / 10;
    res.writeln;
}