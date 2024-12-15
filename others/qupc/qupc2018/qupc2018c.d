import std;

struct Boar {
    int x, y, dist;
}

struct Coord {
    int x, y;
}

void main() {
    int H, W, X;
    readf("%d %d %d\n", H, W, X);

    auto s = new dchar[][](H);
    int sx, sy, gx, gy;
    Boar[] boars;
    foreach (i; 0 .. H) {
        s[i] = readln.chomp.to!(dchar[]);

        foreach (j, ref x; s[i]) {
            if (x == 'S')
                sx = i, sy = j.to!int;
            if (x == 'G')
                gx = i, gy = j.to!int;
            if (x == '@')
                boars ~= Boar(i, j.to!int, 0), x = '#';
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    while (!boars.empty) {
        auto f = boars.front;
        boars.popFront;

        if (f.dist >= X)
            continue;

        foreach (i; 0 .. 4) {
            int x = f.x + dx[i], y = f.y + dy[i];
            if (x < 0 || H <= x || y < 0 || W <= y || s[x][y] == '#')
                continue;

            boars ~= Boar(x, y, f.dist + 1);
            s[x][y] = '#';
        }
    }

    auto dists = new int[][](H, W);
    foreach (i; 0 .. H)
        dists[i][] = 10 ^^ 9;
    dists[sx][sy] = 0;

    Coord[] coords = [Coord(sx, sy)];
    while (!coords.empty) {
        auto f = coords.front;
        coords.popFront;

        foreach (i; 0 .. 4) {
            int x = f.x + dx[i], y = f.y + dy[i];
            if (x < 0 || H <= x || y < 0 || W <= y || s[x][y] == '#')
                continue;

            if (dists[x][y] > dists[f.x][f.y] + 1) {
                dists[x][y] = dists[f.x][f.y] + 1;
                coords ~= Coord(x, y);
            }
        }
    }

    int res = dists[gx][gy] < 10 ^^ 9 ? dists[gx][gy] : -1;
    res.writeln;
}
