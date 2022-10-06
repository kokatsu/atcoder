import std;

struct Square {
    long x, y, time;
}

void main() {
    long H, W, T;
    readf("%d %d %d\n", H, W, T);

    long xs, ys, xg, yg;
    auto s = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", s[i]);

        foreach (j; 0 .. W) {
            if (s[i][j] == 'S') xs = i, ys = j;
            if (s[i][j] == 'G') xg = i, yg = j;
        }
    }

    long[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    bool check(long t) {
        auto times = new long[][](H, W);
        foreach (i; 0 .. H) times[i][] = long.max;
        times[xs][ys] = 0;

        auto heap = new BinaryHeap!(Array!Square, "a.time > b.time")();
        heap.insert(Square(xs, ys, 0));

        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            foreach (i; 0 .. 4) {
                long x = f.x + dx[i], y = f.y + dy[i];
                if (x < 0 || H <= x || y < 0 || W <= y) continue;

                long time = f.time + (s[x][y] == '#' ? t : 1);
                if (time >= times[x][y]) continue;

                times[x][y] = time;
                heap.insert(Square(x, y, time));
            }
        }

        return times[xg][yg] <= T;
    }

    long ok = 1, ng = T + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        (check(mid) ? ok : ng) = mid;
    }

    ok.writeln;
}