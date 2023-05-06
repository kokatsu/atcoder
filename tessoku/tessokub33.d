import std;

void main() {
    int N, H, W;
    readf("%d %d %d\n", N, H, W);

    int X;
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        X ^= (A - 1);
        X ^= (B - 1);
    }

    writeln(X != 0 ? "First" : "Second");
}