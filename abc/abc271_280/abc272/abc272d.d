import std;

struct Coord {
    long x, y;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto res = new long[][](N, N);
    foreach (i; 0 .. N) res[i][] = long.max;
    res[0][0] = 0;

    Coord[] moves;
    foreach (x; 0 .. N) {
        long rem = M - x * x;
        if (rem < 0) break;

        long y = rem.to!real.sqrt.floor.to!long;
        if (y * y != rem) continue;

        moves ~= Coord(x, y);
        moves ~= Coord(-x, y);
        moves ~= Coord(x, -y);
        moves ~= Coord(-x, -y);
    }

    Coord[] que;
    que ~= Coord(0, 0);

    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        foreach (m; moves) {
            long x = f.x + m.x, y = f.y + m.y;
            if (x < 0 || N <= x || y < 0 || N <= y) continue;

            if (res[x][y] > res[f.x][f.y] + 1) {
                res[x][y] = res[f.x][f.y] + 1;
                que ~= Coord(x, y);
            }
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (res[i][j] == long.max) res[i][j] = -1;
        }
    }

    foreach (r; res) writefln("%(%s %)", r);
}