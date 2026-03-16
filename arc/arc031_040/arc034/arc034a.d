import std;

void main() {
    int N;
    readfln("%d", N);

    real M = 0.0;
    foreach (_; 0 .. N) {
        int a, b, c, d;
        real e;
        readfln("%d %d %d %d %f", a, b, c, d, e);

        M = max(M, a + b + c + d + e * 110.0 / 900.0);
    }

    string res = format("%.20f", M);
    res.writeln;
}
