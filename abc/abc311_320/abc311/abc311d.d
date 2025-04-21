import std;

struct Move {
    int x, y, d;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    auto visited = new bool[][][](N, M, 5);

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    Move[] queue = [Move(1, 1, 4)];
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;

        if (visited[f.x][f.y][f.d]) {
            continue;
        }

        visited[f.x][f.y][f.d] = true;

        int L;
        int[] t, tx, ty;
        if (f.d < 4) {
            L = 1;
            t = [f.d], tx = [dx[f.d]], ty = [dy[f.d]];
        }
        else {
            L = 4;
            t = 4.iota.array, tx = dx, ty = dy;
        }

        foreach (i; 0 .. L) {
            int nx = f.x + tx[i], ny = f.y + ty[i];
            if (nx < 0 || N < nx || ny < 0 || M < ny) {
                continue;
            }

            if (S[nx][ny] == '.') {
                queue ~= Move(nx, ny, t[i]);
            }
            else {
                queue ~= Move(f.x, f.y, 4);
            }
        }
    }

    int res;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. M) {
            if (S[i][j] == '.' && visited[i][j].any) {
                ++res;
            }
        }
    }

    res.writeln;
}
