import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach (x; 0 .. N + 1) {
        foreach (y; 0 .. N - x + 1) {
            foreach (z; 0 .. N - x - y + 1) {
                writefln("%d %d %d", x, y, z);
            }
        }
    }
}
