import std;

struct Edge {
    int to, dist;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int lim = int.max / 2;

    auto roads = new int[][](N, N);
    foreach (i; 0 .. N)
        roads[i][] = lim;

    Edge[] edges;
    foreach (_; 0 .. M) {
        int u, v, l;
        readf("%d %d %d\n", u, v, l);

        --u, --v;
        if (u > 0 && v > 0)
            roads[u][v] = roads[v][u] = l;
        else
            edges ~= Edge(max(u, v), l);
    }

    void f(ref int x, int y) {
        x = min(x, y);
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                f(roads[j][k], roads[j][i] + roads[i][k]);
            }
        }
    }

    int res = lim;
    foreach (e1; edges) {
        foreach (e2; edges) {
            if (e1.to == e2.to)
                continue;

            f(res, e1.dist + e2.dist + roads[e1.to][e2.to]);
        }
    }

    if (res == lim)
        res = -1;

    res.writeln;
}
