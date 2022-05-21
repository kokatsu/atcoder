import std;

struct Edge {
    long to, dist, num;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto edge = new Edge[][](N);
    foreach (i; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        edge[A] ~= Edge(B, C, i);
        edge[B] ~= Edge(A, C, i);
    }

    auto use = new long[](N);

    auto D = new long[](N);
    D[1..$] = long.max / 2;

    auto heap = new BinaryHeap!(Array!Edge, "a.dist > b.dist")();
    heap.insert(Edge(0, 0, 0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        if (f.dist != D[f.to]) continue;

        foreach (e; edge[f.to]) {
            long d = f.dist + e.dist;
            if (d >= D[e.to]) continue;

            use[e.to] = e.num;
            D[e.to] = d;
            heap.insert(Edge(e.to, d, 0));
        }
    }

    use.popFront;
    auto res = use.sort.array.uniq.array;
    res[] += 1;

    writefln("%(%s %)", res);
}