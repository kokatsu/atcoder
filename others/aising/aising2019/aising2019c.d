import std;

struct Coord {
    long x, y;
}

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", S[i]);

    long[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    auto seen = new bool[][](H, W);

    long res;

    void f(long x, long y) {
        Coord[] que;
        que ~= Coord(x, y);

        seen[x][y] = true;

        long b, w;
        ++(S[x][y] == '#' ? b : w);

        while (!que.empty) {
            auto now = que.front;
            que.popFront;

            foreach (i; 0 .. 4) {
                Coord nxt = now;
                nxt.x += dx[i], nxt.y += dy[i];
                if (nxt.x < 0 || H <= nxt.x || nxt.y < 0 || W <= nxt.y) continue;
                if (seen[nxt.x][nxt.y]) continue;
                if (S[nxt.x][nxt.y] == S[now.x][now.y]) continue;

                que ~= nxt;
                seen[nxt.x][nxt.y] = true;
                ++(S[nxt.x][nxt.y] == '#' ? b : w);
            }
        }

        res += b * w;
    }

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (seen[i][j]) continue;

            f(i, j);
        }
    }

    res.writeln;
}