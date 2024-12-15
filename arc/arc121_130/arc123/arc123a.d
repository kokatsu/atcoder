import std;

void main() {
    long A1, A2, A3;
    readf("%d %d %d\n", A1, A2, A3);

    long x = 2 * A2;
    long y = A1 + A3;

    if (x >= y) {
        writeln(x - y);
    }
    else {
        if ((y - x) % 2 == 0) {
            writeln((y - x) / 2);
        }
        else {
            writeln((y - x + 3) / 2);
        }
    }
}
