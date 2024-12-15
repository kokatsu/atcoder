import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        long A, B;
        readf("%d %d\n", A, B);

        long res = A * B;
        res.writeln;
    }
}
