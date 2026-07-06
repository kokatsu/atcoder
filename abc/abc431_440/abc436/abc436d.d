import std;

enum int INF = 10 ^^ 9;

struct Coord {
    int x, y;
}

void main() {
    int H, W;
    readfln("%d %d", H, W);

    string[] S = new string[](H);
    Coord[][] C = new Coord[][](26);
    foreach (i, ref s; S) {
        readfln("%s", s);

        foreach (j, c; s) {
            if (std.uni.isAlpha(c)) {
                C[c - 'a'] ~= Coord(i.to!int, j.to!int);
            }
        }
    }

    int[][] D = new int[][](H, W);
    foreach (ref d; D) {
        d[] = INF;
    }
    D[0][0] = 0;

    Coord[] delta = [Coord(-1, 0), Coord(1, 0), Coord(0, -1), Coord(0, 1)];

    bool[] used = new bool[](26);

    DList!Coord L;
    L.insertBack(Coord(0, 0));
    while (!L.empty) {
        Coord f = L.front;
        L.removeFront;

        int d = D[f.x][f.y];
        foreach (p; delta) {
            int nx = f.x + p.x;
            int ny = f.y + p.y;
            if (nx < 0 || nx >= H || ny < 0 || ny >= W || S[nx][ny] == '#') {
                continue;
            }

            if (D[nx][ny] <= d + 1) {
                continue;
            }

            D[nx][ny] = d + 1;
            L.insertBack(Coord(nx, ny));
        }

        if (std.uni.isAlpha(S[f.x][f.y])) {
            int c = S[f.x][f.y] - 'a';
            if (used[c]) {
                continue;
            }

            used[c] = true;
            foreach (Coord p; C[c]) {
                if (D[p.x][p.y] <= d + 1) {
                    continue;
                }

                D[p.x][p.y] = d + 1;
                L.insertBack(p);
            }
        }
    }

    int res = D[H - 1][W - 1] == INF ? -1 : D[H - 1][W - 1];
    res.writeln;
}
