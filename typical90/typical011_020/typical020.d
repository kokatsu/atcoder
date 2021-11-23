import std;

void main() {
    long a, b, c;
    readf("%d %d %d\n", a, b, c);

    long d = c ^^ b;

    if (a < d) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}