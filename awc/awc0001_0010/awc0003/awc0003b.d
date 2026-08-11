import std;

void main() {
    int N;
    readfln("%d", N);

    int res;
    char X, Y;
    foreach (_; 0 .. N) {
        char L, R;
        readfln("%c %c", L, R);

        if (L == Y) {
            ++res;
        }

        X = L, Y = R;
    }

    res.writeln;
}
