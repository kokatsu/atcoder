import std;

struct Grid {
    int r;
    int c;
    int dir;
    int cnt;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int rs, cs;
    readf("%d %d\n", rs, cs);
    --rs, --cs;

    int rt, ct;
    readf("%d %d\n", rt, ct);
    --rt, --ct;

    auto S = new string[](H);
    foreach (i; 0 .. H) {
        S[i] = readln.chomp;
    }

    auto C = new int[][](H, W);
    foreach (i; 0 .. H) {
        C[i][] = int.max;
    }
    C[rs][cs] = 0;

    auto delta = [
        Grid(-1, 0, 1, 0),
        Grid(0, 1, 2, 0),
        Grid(1, 0, 3, 0),
        Grid(0, -1, 4, 0)
    ];

    auto heap = new BinaryHeap!(Array!Grid, "a.cnt > b.cnt")();
    heap.insert(Grid(rs, cs, 0, 0));

    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        foreach (d; delta) {
            auto next = f;
            next.r += d.r, next.c += d.c;
            if (next.dir != d.dir) {
                next.dir = d.dir;
                if (f.r != rs || f.c != cs) {
                    ++next.cnt;
                }
            }

            if (next.r < 0 || next.r >= H || next.c < 0 || next.c >= W) {
                continue;
            }

            if (S[next.r][next.c] == '#') {
                continue;
            }

            if (C[next.r][next.c] < next.cnt) {
                continue;
            }

            C[next.r][next.c] = next.cnt;
            heap.insert(next);
        }
    }

    C[rt][ct].writeln;
}