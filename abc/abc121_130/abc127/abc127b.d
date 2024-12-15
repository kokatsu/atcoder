import std;

void main() {
    long r, D, x;
    readf("%d %d %d\n", r, D, x);

    foreach (i; 0 .. 10) {
        x *= r;
        x -= D;

        x.writeln;
    }
}
