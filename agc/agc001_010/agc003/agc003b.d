import std;

void main() {
    long N;
    readf("%d\n", N);

    long res, rem;
    foreach (_; 0 .. N) {
        long A;
        readf("%d\n", A);

        if (rem > 0 && A > 0) {
            ++res, --A;
        }

        res += A / 2, rem = A % 2;
    }

    res.writeln;
}
