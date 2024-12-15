import std;

struct Hopscotch {
    int to, op, cnt;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edges = new int[][](N);
    foreach (_; 0 .. M) {
        int u, v;
        readf("%d %d\n", u, v);

        edges[u - 1] ~= v - 1;
    }

    int S, T;
    readf("%d %d\n", S, T);

    --S, --T;

    auto cnts = new int[][](N, 3);
    foreach (i; 0 .. N)
        cnts[i][] = int.max;
    cnts[S][0] = 0;

    Hopscotch[] que;
    que ~= Hopscotch(S, 0, 0);
    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        if (f.to == T && f.op == 0)
            break;

        foreach (e; edges[f.to]) {
            int op = (f.op + 1) % 3;

            int cnt = f.cnt;
            if (op == 0)
                ++cnt;

            if (cnts[e][op] <= cnt)
                continue;

            que ~= Hopscotch(e, op, cnt);
            cnts[e][op] = cnt;
        }
    }

    long res = (cnts[T][0] == int.max ? -1 : cnts[T][0]);
    res.writeln;
}
