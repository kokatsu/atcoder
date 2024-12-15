import std;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    Coord[] coord;
    auto dists = new int[][](H, W);
    foreach (i; 0 .. H) {
        dists[i][] = -1;

        auto A = readln.chomp;
        foreach (j, a; A) {
            if (a == '#') {
                dists[i][j] = 0;
                coord ~= Coord(i, j.to!int);
            }
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];
    int res;
    while (!coord.empty) {
        auto f = coord.front;
        coord.popFront;

        res = max(res, dists[f.x][f.y]);

        foreach (i; 0 .. 4) {
            int x = f.x + dx[i], y = f.y + dy[i];
            if (x < 0 || H <= x || y < 0 || W <= y)
                continue;

            if (dists[x][y] >= 0)
                continue;

            dists[x][y] = dists[f.x][f.y] + 1;
            coord ~= Coord(x, y);
        }
    }

    res.writeln;
}
