import std;

void main() {
    long[long] cnts;
    long res;

    long N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        long A;
        readf("%d\n", A);

        if (A in cnts)
            res += cnts[A];

        ++cnts[A];
    }

    res.writeln;
}
