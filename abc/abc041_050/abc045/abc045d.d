import std;

struct Coord {
    long x, y;
}

void main() {
    long H, W, N;
    readf("%d %d %d\n", H, W, N);

    auto coords = new Coord[](N);
    bool[Coord] list;
    foreach (i; 0 .. N) {
        readf("%d %d\n", coords[i].x, coords[i].y);
        list[coords[i]] = true;
    }

    auto cnts = new long[](10);
    bool[Coord] seen;
    foreach (i; 0 .. N) {
        foreach (j; -1 .. 2) {
            long x = coords[i].x + j;
            if (x <= 1 || H <= x) continue;

            foreach (k; -1 .. 2) {
                long y = coords[i].y + k;
                if (y <= 1 || W <= y) continue;

                auto c = Coord(x, y);
                if (c in seen) continue;

                int num;
                foreach (l; -1 .. 2) {
                    foreach (m; -1 .. 2) {
                        auto d = Coord(c.x+l, c.y+m);
                        if (d in list) ++num;
                    }
                }

                if (num > 0) ++cnts[num];

                seen[c] = true;
            }
        }
    }

    long r = (H - 2) * (W - 2) - cnts.sum;
    cnts[0] = r;

    foreach (c; cnts) c.writeln;
}