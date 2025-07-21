import std;

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    int dx = -1, dy;

    void clockwise() {
        int tx = dx;
        dx = dy;
        dy = -tx;
    }

    void counterclockwise() {
        int tx = dx;
        dx = -dy;
        dy = tx;
    }

    dchar[][] res = new dchar[][](H, W);
    foreach (i; 0 .. H) {
        res[i][] = '.';
    }

    int x, y;
    foreach (_; 0 .. N) {
        if (res[x][y] == '.') {
            res[x][y] = '#';
            clockwise();
        }
        else {
            res[x][y] = '.';
            counterclockwise();
        }

        x = (x + dx + H) % H;
        y = (y + dy + W) % W;
    }

    writefln("%(%-(%c%)\n%)", res);
}
