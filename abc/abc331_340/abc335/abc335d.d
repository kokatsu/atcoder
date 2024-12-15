import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = new string[][](N, N);
    res[N / 2][N / 2] = "T";

    int x, y, dx = 1, dy;
    string num = "1";
    foreach (i; 0 .. N * N - 1) {
        res[x][y] = num;
        num = num.succ;

        int nx = x + dx, ny = y + dy;
        if (0 <= nx && nx < N && 0 <= ny && ny < N && res[nx][ny] == "") {
            x = nx, y = ny;
        }
        else {
            swap(dx, dy);
            if (dy == 0)
                dx *= -1;
            x += dx, y += dy;
        }
    }

    writefln("%(%-(%s %)\n%)", res);
}
