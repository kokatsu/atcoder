import std;

struct Cell {
    int x, y, cnt;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H)
        S[i] = readln.chomp;

    auto dists = new int[][](H, W);
    foreach (i; 0 .. H)
        dists[i][] = int.max;
    dists[0][0] = 0;

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    auto list = new DList!Cell();
    list.insertFront(Cell(0, 0, 0));
    while (!list.empty) {
        auto f = list.front;
        list.removeFront;

        if (f.x == H - 1 && f.y == W - 1)
            break;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i], ny = f.y + dy[i];
            if (nx < 0 || H <= nx || ny < 0 || W <= ny)
                continue;
            if (S[nx][ny] == '#')
                continue;
            if (dists[nx][ny] <= f.cnt)
                continue;

            dists[nx][ny] = f.cnt;
            list.insertFront(Cell(nx, ny, f.cnt));
        }

        foreach (i; -2 .. 3) {
            foreach (j; -2 .. 3) {
                int t = i * j;
                if (t <= -4 || 4 <= t)
                    continue;

                int nx = f.x + i, ny = f.y + j;
                if (nx < 0 || H <= nx || ny < 0 || W <= ny)
                    continue;
                if (dists[nx][ny] <= f.cnt + 1)
                    continue;

                dists[nx][ny] = f.cnt + 1;
                list.insertBack(Cell(nx, ny, f.cnt + 1));
            }
        }
    }

    int res = dists[H - 1][W - 1];
    res.writeln;
}
