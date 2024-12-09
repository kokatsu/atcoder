import std;

void main() {
    int X, t;
    readf("%d %d\n", X, t);

    int res = max(0, X-t);
    res.writeln;
}