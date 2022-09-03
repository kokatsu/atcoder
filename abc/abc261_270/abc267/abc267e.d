import std;

struct S {
    long cost, edge;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    auto edges = new long[][](N);
    foreach (_; 0 .. M) {
        long U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        edges[U] ~= V, edges[V] ~= U;
    }

    auto B = new long[](N);
    foreach (i; 0 .. N) {
        foreach (e; edges[i]) {
            B[i] += A[e];
        }
    }

    auto remove = new bool[](N);

    auto rbt = new RedBlackTree!(S, "a.cost < b.cost", true)();
    foreach (i, b; B) rbt.insert(S(b, i.to!long));

    long res = long.min;
    while (!rbt.empty) {
        auto f = rbt.front;
        rbt.removeKey(f);

        res = max(res, f.cost);
        remove[f.edge] = true;

        foreach (e; edges[f.edge]) {
            if (remove[e]) continue;

            rbt.removeKey(S(B[e], e));
            B[e] -= A[f.edge];
            rbt.insert(S(B[e], e));
        }
    }

    res.writeln;
}