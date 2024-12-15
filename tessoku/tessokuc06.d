import std;

void main() {
    int N;
    readf("%d\n", N);

    N.writeln;
    foreach (i; 1 .. N + 1) {
        writefln("%d %d", i, i % N + 1);
    }
}
