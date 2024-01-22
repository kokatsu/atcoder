import std;

void main() {
    int H, W, A, B;
    readf("%d %d %d %d\n", H, W, A, B);

    auto room = new bool[][](H, W);
    int res;

    void f(int a = A, int b = B, int cnt = 0) {
        if (cnt == A + B) {
            ++res;
            return;
        }

        int x, y;
        outer: foreach (i; 0 .. H) {
            foreach (j; 0 .. W) {
                if (!room[i][j]) {
                    x = i, y = j;
                    break outer;
                }
            }
        }

        if (a > 0) {
            if (y + 1 < W && !room[x][y+1]) {
                room[x][y] = room[x][y+1] = true;
                f(a-1, b, cnt+1);
                room[x][y] = room[x][y+1] = false;
            }
            if (x + 1 < H && !room[x+1][y]) {
                room[x][y] = room[x+1][y] = true;
                f(a-1, b, cnt+1);
                room[x][y] = room[x+1][y] = false;
            }
        }
        if (b > 0) {
            room[x][y] = true;
            f(a, b-1, cnt+1);
            room[x][y] = false;
        }
    }

    f();

    res.writeln;
}