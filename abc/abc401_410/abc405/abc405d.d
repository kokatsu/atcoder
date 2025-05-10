import std;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    Coord[] E = [];

    auto S = new dchar[][](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j; 0 .. W) {
            if (S[i][j] == 'E') {
                E ~= Coord(i, j);
            }
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];
    dchar[] v = ['v', '<', '^', '>'];

    foreach (e; E) {
        S[e.x][e.y] = '.';
    }

    Coord[] queue;
    foreach (e; E) {
        queue ~= e;
    }

    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;

        int x = f.x, y = f.y;
        foreach (i; 0 .. 4) {
            int nx = x + dx[i], ny = y + dy[i];
            if (nx < 0 || nx >= H || ny < 0 || ny >= W || S[nx][ny] != '.') {
                continue;
            }

            S[nx][ny] = v[i];
            queue ~= Coord(nx, ny);
        }
    }

    foreach (e; E) {
        S[e.x][e.y] = 'E';
    }

    string res = format("%-(%s\n%)", S);
    res.writeln;
}
