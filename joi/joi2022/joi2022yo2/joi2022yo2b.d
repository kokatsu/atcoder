import std;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", S[i]);

    auto dists = new int[][](H, W);
    foreach (i; 0 .. H) dists[i][] = int.max;
    dists[0][0] = 0;

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    Coord[] queue;
    queue ~= Coord(0, 0);
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i], ny = f.y + dy[i];
            if (0 <= nx && nx < H && 0 <= ny && ny < W
                && S[f.x][f.y] != S[nx][ny] && dists[nx][ny] > dists[f.x][f.y] + 1) {
                    dists[nx][ny] = dists[f.x][f.y] + 1;
                    queue ~= Coord(nx, ny);
                }
        }
    }

    int res = dists[H-1][W-1] < int.max ? dists[H-1][W-1] : -1;
    res.writeln;
}