import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res = N;
    foreach (_; 0 .. K) {
        auto d = res.toChars.to!(dchar[]);
        d.sort!"a > b";

        long g1, g2, b = 1;
        foreach (x; d) {
            g1 = g1 * 10 + (x - '0');
            g2 += (x - '0') * b;
            b *= 10;
        }

        res = g1 - g2;
    }

    res.writeln;
}