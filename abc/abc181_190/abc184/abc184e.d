import std;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int sx, sy, gx, gy;
    auto lowers = new Coord[][](lowercase.length);
    auto a = new dchar[][](H);
    foreach (i; 0 .. H) {
        readf("%s\n", a[i]);

        foreach (j, c; a[i]) {
            if (c == 'S') {
                sx = i, sy = j.to!int;
            }
            else if (c == 'G') {
                gx = i, gy = j.to!int;
            }
            else if (std.uni.isLower(c)) {
                lowers[c - 'a'] ~= Coord(i, j.to!int);
            }
        }
    }

    auto used = new bool[](26);

    auto dists = new int[][](H, W);
    foreach (i; 0 .. H) {
        dists[i][] = int.max / 2;
    }
    dists[sx][sy] = 0;

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    Coord[] queue;
    queue ~= Coord(sx, sy);
    while (!queue.empty) {
        Coord f = queue.front;
        queue.popFront;

        foreach (i; 0 .. 4) {
            int x = f.x + dx[i], y = f.y + dy[i];
            if (x < 0 || H <= x || y < 0 || W <= y || a[x][y] == '#'
                    || dists[x][y] <= dists[f.x][f.y] + 1) {
                continue;
            }

            dists[x][y] = dists[f.x][f.y] + 1;
            queue ~= Coord(x, y);
        }

        if (std.uni.isLower(a[f.x][f.y]) && !used[a[f.x][f.y] - 'a']) {
            used[a[f.x][f.y] - 'a'] = true;
            foreach (l; lowers[a[f.x][f.y] - 'a']) {
                if (dists[l.x][l.y] > dists[f.x][f.y] + 1) {
                    dists[l.x][l.y] = dists[f.x][f.y] + 1;
                    queue ~= l;
                }
            }
        }
    }

    int res = dists[gx][gy] < int.max / 2 ? dists[gx][gy] : -1;
    res.writeln;
}
