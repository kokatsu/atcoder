import std;

void main() {
    int W, a, b;
    readf("%d %d %d\n", W, a, b);

    int res = max(abs(b - a) - W, 0);
    res.writeln;
}
