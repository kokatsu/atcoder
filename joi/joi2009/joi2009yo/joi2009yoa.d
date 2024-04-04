import std;

enum int H = 3600, M = 60;

void main() {
    foreach (_; 0 .. 3) {
        int h1, m1, s1, h2, m2, s2;
        readf("%d %d %d %d %d %d\n", h1, m1, s1, h2, m2, s2);

        int x = h1 * H + m1 * M + s1, y = h2 * H + m2 * M + s2;

        int diff = y - x;
        int div = diff / H, rem = diff % H;

        int h = div, m = rem / M, s = rem % M;
        writeln(h, " ", m, " ", s);
    }
}