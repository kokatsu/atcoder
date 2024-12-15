import std;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    int cnt;
    foreach (i; 0 .. H) {
        S[i] = readln.chomp;
        cnt += S[i].count('.');
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    int[][] dist = new int[][](H, W);
    dist[0][0] = 1;

    Coord[] heap;
    heap ~= Coord(0, 0);
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i], ny = f.y + dy[i];

            if (nx < 0 || H <= nx || ny < 0 || W <= ny)
                continue;
            if (S[nx][ny] == '#')
                continue;

            if (dist[nx][ny] == 0) {
                heap ~= Coord(nx, ny);
                dist[nx][ny] = dist[f.x][f.y] + 1;
            }
        }
    }

    --H, --W;

    int res = (dist[H][W] > 0 ? cnt - dist[H][W] : -1);
    res.writeln;
}
