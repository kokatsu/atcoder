import std;

void main() {
    long N, T;
    readfln("%d %d", N, T);

    long res;
    foreach (_; 0 .. N) {
        long A, C;
        readfln("%d %d", A, C);

        res += max(0, T - A) * C;
    }

    res.writeln;
}
