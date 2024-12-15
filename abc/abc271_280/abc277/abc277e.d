import std;

struct Move {
    int to, sw, cnt;
}

void main() {
    int N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto edges = new int[][][](N, 2);
    foreach (_; 0 .. M) {
        int u, v, a;
        readf("%d %d %d\n", u, v, a);

        --u, --v;
        edges[u][a] ~= v, edges[v][a] ~= u;
    }

    auto s = readln.chomp.split.to!(int[]);

    auto list = new bool[](N);
    foreach (x; s)
        list[x - 1] = true;

    auto cnts = new int[][](N, 2);
    foreach (i; 0 .. N)
        cnts[i][] = int.max;
    cnts[0][1] = 0;

    auto heap = new BinaryHeap!(Array!Move, "a.cnt > b.cnt")();
    heap.insert(Move(0, 1, 0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        foreach (e; edges[f.to][f.sw]) {
            if (cnts[e][f.sw] > f.cnt + 1) {
                cnts[e][f.sw] = f.cnt + 1;
                heap.insert(Move(e, f.sw, f.cnt + 1));
            }
        }

        if (list[f.to]) {
            if (cnts[f.to][(f.sw + 1) % 2] > f.cnt) {
                cnts[f.to][(f.sw + 1) % 2] = f.cnt;
                heap.insert(Move(f.to, (f.sw + 1) % 2, f.cnt));
            }
        }
    }

    int mn = cnts[N - 1].minElement;

    int res = (mn == int.max ? -1 : mn);
    res.writeln;
}
