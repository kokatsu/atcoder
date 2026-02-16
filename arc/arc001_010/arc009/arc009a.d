import std;

void main() {
    int N;
    readfln("%d", N);

    int S;
    foreach (_; 0 .. N) {
        int a, b;
        readfln("%d %d", a, b);

        S += a * b;
    }

    int res = S * 105 / 100;
    res.writeln;
}
