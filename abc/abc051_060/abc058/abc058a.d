import std;

void main() {
    int a, b, c;
    readf("%d %d %d\n", a, b, c);

    string res = (b - a == c - b) ? "YES" : "NO";
    res.writeln;
}
