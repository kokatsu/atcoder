import std;

void main() {
    int a, b, c;
    readf("%d %d %d\n", a, b, c);

    foreach (i; 1 .. 128) {
        if (i % 3 == a && i % 5 == b && i % 7 == c) {
            i.writeln;
        }
    }
}