import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long res;
    foreach (_; 0 .. N) {
        long A, B;
        readfln("%d %d", A, B);

        if (A * B >= K) {
            ++res;
        }
    }

    res.writeln;
}
