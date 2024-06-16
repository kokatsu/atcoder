import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    string res = "ERROR";
    if (Y != 0) res = format("%.2f", floor(X.to!real*100/Y)/100);

    res.writeln;
}