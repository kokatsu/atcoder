import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new int[][](N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        edge[A] ~= B, edge[B] ~= A;
    }

    auto res = new int[](N);
    res[1 .. N] = -1;

    int[] queue;
    queue ~= 0;
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;
        foreach (e; edge[f]) {
            if (res[e] >= 0)
                continue;

            res[e] = res[f] + 1;
            queue ~= e;
        }
    }

    writefln("%(%s\n%)", res);
}
