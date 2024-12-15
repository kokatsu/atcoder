import std;

void main() {
    int n;
    readf("%d\n", n);

    int A, B;
    foreach (_; 0 .. n) {
        int x, y;
        readf("%d %d\n", x, y);

        if (x == y) {
            A += x, B += y;
        }
        else if (x > y) {
            A += x + y;
        }
        else {
            B += x + y;
        }
    }

    writeln(A, " ", B);
}
