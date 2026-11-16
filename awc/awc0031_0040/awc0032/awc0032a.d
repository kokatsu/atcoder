import std;

void main() {
    long N, R;
    readfln("%d %d", N, R);

    long res, W = R * R;
    foreach (_; 0 .. N) {
        long X, Y, P, Q;
        readfln("%d %d %d %d", X, Y, P, Q);

        if ((X - P) ^^ 2 + (Y - Q) ^^ 2 <= W) {
            ++res;
        }
    }

    res.writeln;
}
