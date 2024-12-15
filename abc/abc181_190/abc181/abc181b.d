import std;

void main() {
    int N;
    readf("%d\n", N);

    long f(long x) {
        return x * (x + 1) / 2;
    }

    long res;
    foreach (_; 0 .. N) {
        long A, B;
        readf("%d %d\n", A, B);

        res += f(B) - f(A - 1);
    }

    res.writeln;
}
