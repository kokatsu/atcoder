import std;

void main() {
    long N, T;
    readfln("%d %d", N, T);

    long res;
    foreach (_; 0 .. N) {
        long A, B;
        readfln("%d %d", A, B);

        res += max(A - B * T, 0);
    }

    res.writeln;
}
