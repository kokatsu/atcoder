import std;

void main() {
    int y, m, d;
    readfln("%d", y);
    readfln("%d", m);
    readfln("%d", d);

    int f(int a, int b, int c) {
        if (b <= 2) {
            a -= 1;
            b += 12;
        }
        return 365 * a + a / 4 - a / 100 + a / 400 + 306 * (b + 1) / 10 + c - 429;
    }

    int res = f(2014, 5, 17) - f(y, m, d);
    res.writeln;
}
