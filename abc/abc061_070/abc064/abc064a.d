import std;

void main() {
    int r, g, b;
    readf("%d %d %d\n", r, g, b);

    int num = (r * 10 + g) * 10 + b;

    string res = num % 4 == 0 ? "YES" : "NO";
    res.writeln;
}
