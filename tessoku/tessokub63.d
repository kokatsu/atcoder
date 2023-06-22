import std;

void main() {
    int R, C, sy, sx, gy, gx;
    readf("%d %d\n%d %d\n%d %d\n", R, C, sy, sx, gy, gx);

    auto c = new string[](R);
    foreach (i; 0 .. R) {
        readf("%s\n", c[i]);
    }

    --sy, --sx, --gy, --gx;

    auto dist = new int[][](R, C);
    foreach (i; 0 .. R) dist[i][] = -1;

    int[] dy = [-1, 0, 1, 0], dx = [0, 1, 0, -1];

    Tuple!(int, int)[] queue;
    queue ~= tuple(sy, sx);
    dist[sy][sx] = 0;
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;
        foreach (v, u; zip(dy, dx)) {
            int ny = f[0] + v, nx = f[1] + u;
            if (c[ny][nx] == '#') continue;
            if (dist[ny][nx] != -1) continue;
            dist[ny][nx] = dist[f[0]][f[1]] + 1;
            queue ~= tuple(ny, nx);
        }
    }

    int res = dist[gy][gx];
    res.writeln;
}