import std;

struct Edge {
    long to, dist;
}

void main() {
    long N;
    readf("%d\n", N);

    auto edge = new Edge[][](N);
    foreach (_; 0 .. N - 1) {
        long u, v, w;
        readf("%d %d %d\n", u, v, w);

        --u, --v;
        edge[u] ~= Edge(v, w), edge[v] ~= Edge(u, w);
    }

    auto color = new long[](N);

    void f(long pos, long pre = -1) {
        foreach (e; edge[pos]) {
            if (e.to == pre)
                continue;

            color[e.to] = (e.dist % 2 == 0 ? color[pos] : (color[pos] + 1) % 2);
            f(e.to, pos);
        }
    }

    f(0);

    foreach (c; color)
        c.writeln;
}
