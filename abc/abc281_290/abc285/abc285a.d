import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    writeln(a * 2 == b || a * 2 + 1 == b ? "Yes" : "No");
}