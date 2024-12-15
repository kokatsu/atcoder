import std;

void main() {
    long N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    long R = 1, B;
    foreach_reverse (i; 2 .. N + 1) {
        B += R * X;

        R += B;
        B *= Y;
    }

    B.writeln;
}
