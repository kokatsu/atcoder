import std;

void main() {
    long a, b;
    readf("%d %d\n", a, b);

    writeln(a == b - 1 || (a == 1 && b == 10) ? "Yes" : "No");
}