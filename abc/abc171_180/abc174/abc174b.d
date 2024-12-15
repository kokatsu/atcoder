import std;

void main() {
    long N, D;
    readf("%d %d\n", N, D);

    long res, S = D * D;
    foreach (_; 0 .. N) {
        long X, Y;
        readf("%d %d\n", X, Y);

        if (X * X + Y * Y <= S)
            ++res;
    }

    res.writeln;
}
