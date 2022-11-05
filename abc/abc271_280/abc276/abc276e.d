import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int sx, sy;
    auto C = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", C[i]);

        foreach (j, c; C[i]) {
            if (c == 'S') {
                sx = i, sy = j.to!int;
            }
        }
    }

    bool isOK;

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];
    auto seen = new bool[][](H, W);

    void f(int x, int y, int cnt = 0) {
        seen[x][y] = true;
        foreach (i; 0 .. 4) {
            int nx = x + dx[i], ny = y + dy[i];
            if (nx < 0 || H <= nx || ny < 0 || W <= ny) continue;
            if (C[nx][ny] == '#') continue;
            if (seen[nx][ny]) {
                if (C[nx][ny] == 'S' && cnt >= 3) isOK = true;
                continue;
            }

            f(nx, ny, cnt+1);
        }
    }

    f(sx, sy);

    writeln(isOK ? "Yes" : "No");
}