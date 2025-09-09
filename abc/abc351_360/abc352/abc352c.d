import std;

void main() {
    int N;
    readf("%d\n", N);

    long res, C;
    foreach (i; 0 .. N) {
        long A, B;
        readf("%d %d\n", A, B);

        res += A;
        C = max(C, B - A);
    }

    res += C;

    res.writeln;
}
