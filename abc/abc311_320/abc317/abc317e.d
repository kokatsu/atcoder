import std;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto avoids = new bool[][](H, W);

    int sx, sy, gx, gy;
    auto A = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", A[i]);

        avoids[i][] = true;
        foreach (j; 0 .. W) {
            if (A[i][j] == 'S')
                sx = i, sy = j;
            if (A[i][j] == 'G')
                gx = i, gy = j;
        }
    }

    foreach (i; 0 .. H) {
        bool block;
        foreach (j; 0 .. W) {
            if (A[i][j] == '>')
                block = true, avoids[i][j] = false;
            else if (A[i][j] != 'S' && A[i][j] != 'G' && A[i][j] != '.')
                block = false, avoids[i][j] = false;
            else if (block)
                avoids[i][j] = false;
        }
    }

    foreach (i; 0 .. H) {
        bool block;
        foreach_reverse (j; 0 .. W) {
            if (A[i][j] == '<')
                block = true, avoids[i][j] = false;
            else if (A[i][j] != 'S' && A[i][j] != 'G' && A[i][j] != '.')
                block = false, avoids[i][j] = false;
            else if (block)
                avoids[i][j] = false;
        }
    }

    foreach (j; 0 .. W) {
        bool block;
        foreach (i; 0 .. H) {
            if (A[i][j] == 'v')
                block = true, avoids[i][j] = false;
            else if (A[i][j] != 'S' && A[i][j] != 'G' && A[i][j] != '.')
                block = false, avoids[i][j] = false;
            else if (block)
                avoids[i][j] = false;
        }
    }

    foreach (j; 0 .. W) {
        bool block;
        foreach_reverse (i; 0 .. H) {
            if (A[i][j] == '^')
                block = true, avoids[i][j] = false;
            else if (A[i][j] != 'S' && A[i][j] != 'G' && A[i][j] != '.')
                block = false, avoids[i][j] = false;
            else if (block)
                avoids[i][j] = false;
        }
    }

    int[] dx = [0, -1, 0, 1];
    int[] dy = [-1, 0, 1, 0];

    auto cnts = new int[][](H, W);
    foreach (i; 0 .. H)
        cnts[i][] = 10 ^^ 9;
    cnts[sx][sy] = 0;

    Coord[] coords;
    coords ~= Coord(sx, sy);
    while (!coords.empty) {
        auto f = coords.front;
        coords.popFront;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i], ny = f.y + dy[i];
            if (nx < 0 || nx >= H || ny < 0 || ny >= W || !avoids[nx][ny])
                continue;

            if (cnts[nx][ny] > cnts[f.x][f.y] + 1) {
                cnts[nx][ny] = cnts[f.x][f.y] + 1;
                coords ~= Coord(nx, ny);
            }
        }
    }

    int res = cnts[gx][gy] < 10 ^^ 9 ? cnts[gx][gy] : -1;
    res.writeln;
}
