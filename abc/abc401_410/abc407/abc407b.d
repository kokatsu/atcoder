import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    auto dice = iota(1, 7);

    int p;
    foreach (d1; dice) {
        foreach (d2; dice) {
            if (d1 + d2 >= X || abs(d1 - d2) >= Y) {
                ++p;
            }
        }
    }

    real res = p.to!real / 36;
    writefln("%.20f", res);
}
