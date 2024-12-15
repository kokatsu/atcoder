import std;

struct Position {
    int h, w;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H)
        S[i] = readln.chomp;

    auto dh = [-1, 0, 1, 0], dw = [0, 1, 0, -1];

    int f(int x, int y) {
        int res;

        auto dist = new int[][](H, W);
        foreach (i; 0 .. H)
            dist[i][] = int.max;
        dist[x][y] = 0;

        Position[] pos;
        pos ~= Position(x, y);
        while (!pos.empty) {
            auto f = pos.front;
            pos.popFront;

            static foreach (i; 0 .. 4) {
                {
                    int nh = f.h + dh[i], nw = f.w + dw[i];

                    if (0 <= nh && nh < H && 0 <= nw && nw < W && S[nh][nw] == '.'
                            && dist[nh][nw] > dist[f.h][f.w] + 1) {
                        pos ~= Position(nh, nw);
                        dist[nh][nw] = dist[f.h][f.w] + 1;
                        res = max(res, dist[nh][nw]);
                    }
                }
            }
        }

        return res;
    }

    int res;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '#')
                continue;

            res = max(res, f(i, j));
        }
    }

    res.writeln;
}
