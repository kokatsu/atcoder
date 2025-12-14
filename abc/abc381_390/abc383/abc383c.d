import std;

struct Cell {
    int d, x, y;
}

void main() {
    int H, W, D;
    readf("%d %d %d\n", H, W, D);

    Cell[] queue;
    string[] S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j, s; S[i]) {
            if (s == 'H') {
                queue ~= Cell(0, i, j.to!int);
            }
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    int res;
    bool[][] visited = new bool[][](H, W);
    while (!queue.empty) {
        Cell cell = queue.front;
        queue.popFront;

        if (visited[cell.x][cell.y]) {
            continue;
        }

        visited[cell.x][cell.y] = true;
        ++res;

        foreach (i; 0 .. 4) {
            int nx = cell.x + dx[i], ny = cell.y + dy[i];
            if (nx < 0 || nx >= H || ny < 0 || ny >= W) {
                continue;
            }

            if (S[nx][ny] == '#' || visited[nx][ny] || cell.d + 1 > D) {
                continue;
            }

            queue ~= Cell(cell.d + 1, nx, ny);
        }
    }

    res.writeln;
}
