import std;

void main() {
    int H, W, N;
    readf("%d %d\n%d\n", H, W, N);

    auto A = readln.chomp.split.to!(int[]);

    int x, y, dy = 1;
    auto c = new int[][](H, W);
    foreach (i, a; A) {
        long rem = a;
        while (rem > 0) {
            c[x][y] = i.to!int + 1;

            if (y == W - 1 && dy == 1) {
                ++x;
                dy = -1;
            }
            else if (y == 0 && dy == -1) {
                ++x;
                dy = 1;
            }
            else {
                y += dy;
            }

            --rem;
        }
    }

    foreach (d; c) writefln("%(%s %)", d);
}