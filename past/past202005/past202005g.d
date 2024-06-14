import std;

enum int M = 201, U = M * 2 + 1;

struct Coord {
    int x, y;
}

void main() {
    int N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    auto dists = new int[][](U, U);
    foreach (i; 0 .. U) {
        dists[i][] = int.max / 2;
    }
    dists[M][M] = 0;

    foreach (_; 0 .. N) {
        int x, y;
        readf("%d %d\n", x, y);

        dists[x+M][y+M] = -1;
    }

    int[] dx = [1, 0, -1, 1, -1, 0], dy = [1, 1, 1, 0, 0, -1];

    DList!Coord heap;
    heap.insertBack(Coord(M, M));
    while (!heap.empty) {
        auto f = heap.front;
        heap.removeFront;

        foreach (i; 0 .. 6) {
            int nx = f.x + dx[i], ny = f.y + dy[i];

            if (nx < 0 || U <= nx || ny < 0 || U <= ny) {
                continue;
            }

            if (dists[nx][ny] > dists[f.x][f.y] + 1) {
                dists[nx][ny] = dists[f.x][f.y] + 1;
                heap.insertBack(Coord(nx, ny));
            }
        }
    }

    int res = dists[X+M][Y+M] < int.max / 2 ? dists[X+M][Y+M] : -1;
    res.writeln;
}