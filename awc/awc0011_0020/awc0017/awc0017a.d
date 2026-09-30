import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long res;
    foreach (_; 0 .. N) {
        long C, D;
        readfln("%d %d", C, D);

        if (C <= K) {
            res += D;
        }
    }

    res.writeln;
}
