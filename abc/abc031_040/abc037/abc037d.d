import std;

enum long MOD = 10 ^^ 9 + 7;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

struct Block {
    long num, x, y;
}

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto heap = new BinaryHeap!(Array!Block, "a.num > b.num")();

    auto a = new long[][](H);
    foreach (i; 0 .. H) {
        a[i] = readln.chomp.split.to!(long[]);

        foreach (j, x; a[i]) {
            heap.insert(Block(x, i, j.to!long));
        }
    }

    long[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    auto cnts = new long[][](H, W);
    foreach (i; 0 .. H) cnts[i][] = 1;

    long res;
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        addMod(res, cnts[f.x][f.y]);

        foreach (i; 0 .. 4) {
            long nx = f.x + dx[i], ny = f.y + dy[i];
            if (nx < 0 || H <= nx || ny < 0 || W <= ny) continue;
            if (a[nx][ny] <= f.num) continue;

            addMod(cnts[nx][ny], cnts[f.x][f.y]);
        }
    }

    res.writeln;
}