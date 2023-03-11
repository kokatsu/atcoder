import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new int[][](H, W);
    foreach (i; 0 .. H) A[i] = readln.chomp.split.to!(int[]);

    int res;
    bool[int] used;
    used[A[0][0]] = true;
    void f(int x, int y) {
        if (x == H - 1 && y == W - 1) {
            ++res;
        }
        else {
            if (x < H - 1 && A[x+1][y] !in used) {
                used[A[x+1][y]] = true;
                f(x+1, y);
                used.remove(A[x+1][y]);
            }
            if (y < W - 1 && A[x][y+1] !in used) {
                used[A[x][y+1]] = true;
                f(x, y+1);
                used.remove(A[x][y+1]);
            }
        }
    }

    f(0, 0);

    res.writeln;
}