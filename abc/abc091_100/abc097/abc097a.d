import std;

void main() {
    int a, b, c, d;
    readf("%d %d %d %d\n", a, b, c, d);

    int x = min(abs(a - c), max(abs(a - b), abs(b - c)));
    writeln(x <= d ? "Yes" : "No");
}
