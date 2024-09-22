import std;

void main() {
    int x, a, b;
    readf("%d %d %d\n", x, a, b);

    string res = abs(x-a) < abs(x-b) ? "A" : "B";
    res.writeln;
}