import std;

struct Square {
    long x, y, cost;
}

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto A = new long[][](H, W);
    foreach (i; 0 .. H) A[i] = readln.chomp.split.to!(long[]);

    long[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    long[][] dijkstra(long x, long y) {
        auto ret = new long[][](H, W);
        foreach (i; 0 .. H) ret[i][] = long.max / 4;

        auto heap = new BinaryHeap!(Array!Square, "a.cost > b.cost");
        heap.insert(Square(x, y, 0));
        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            if (ret[f.x][f.y] < f.cost) {
                continue;
            }

            foreach (i; 0 .. 4) {
                long nx = f.x + dx[i], ny = f.y + dy[i];
                if (nx < 0 || H <= nx || ny < 0 || W <= ny) {
                    continue;
                }

                long ncost = f.cost + A[nx][ny];
                if (ncost < ret[nx][ny]) {
                    ret[nx][ny] = ncost;
                    heap.insert(Square(nx, ny, ncost));
                }
            }
        }

        return ret;
    }

    long[][] grid1 = dijkstra(H-1, 0), grid2 = dijkstra(H-1, W-1), grid3 = dijkstra(0, W-1);

    long res = long.max;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            res = min(res, grid1[i][j]+grid2[i][j]+grid3[i][j]-A[i][j]*2);
        }
    }

    res.writeln;
}