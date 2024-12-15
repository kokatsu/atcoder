import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        int res = A % B;
        res.writeln;
    }
}
