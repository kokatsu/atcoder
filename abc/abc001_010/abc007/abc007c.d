import std;

struct Coord {
    int y, x;
}

void main() {
    int R, C;
    readf("%d %d\n", R, C);

    int sy, sx;
    readf("%d %d\n", sy, sx);

    int gy, gx;
    readf("%d %d\n", gy, gx);

    auto c = new string[](R);
    foreach (i; 0 .. R) c[i] = readln.chomp;

    --sy, --sx, --gy, --gx;

    int[] dy = [-1, 0, 1, 0], dx = [0, 1, 0, -1];

    auto grid = new int[][](R, C);
    foreach (i; 0 .. R) grid[i][] = int.max;
    grid[sy][sx] = 0;

    Coord[] coord;
    coord ~= Coord(sy, sx);
    while (!coord.empty) {
        auto f = coord.front;
        coord.popFront;

        foreach (i; 0 .. 4) {
            int ny = f.y + dy[i], nx = f.x + dx[i];
            if (c[ny][nx] == '#') continue;
            if (grid[ny][nx] <= grid[f.y][f.x] + 1) continue;

            grid[ny][nx] = grid[f.y][f.x] + 1;
            coord ~= Coord(ny, nx);
        }
    }

    int res = grid[gy][gx];
    res.writeln;
}