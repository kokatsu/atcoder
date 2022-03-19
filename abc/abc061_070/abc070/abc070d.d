import std;

struct Edge {
    long to, cost;
}

void main() {
    long N;
    readf("%d\n", N);

    auto edge = new Edge[][](N);
    foreach (_; 0 .. N-1) {
        long a, b, c;
        readf("%d %d %d\n", a, b, c);

        --a, --b;
        edge[a] ~= Edge(b, c), edge[b] ~= Edge(a, c);
    }

    long Q, K;
    readf("%d %d\n", Q, K);

    --K;

    auto dist = new long[](N);

    void f(long now, long pre = -1, long cost = 0) {
        dist[now] = cost;

        foreach (e; edge[now]) {
            if (e.to == pre) continue;

            f(e.to, now, cost+e.cost);
        }
    }

    f(K);

    foreach (_; 0 .. Q) {
        long x, y;
        readf("%d %d\n", x, y);

        --x, --y;

        long res = dist[x] + dist[y];
        res.writeln;
    }
}