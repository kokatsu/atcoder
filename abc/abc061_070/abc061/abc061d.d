import std;

struct Edge {
    long from, to, cost;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto edges = new Edge[](M);
    foreach (i; 0 .. M) {
        long a, b, c;
        readf("%d %d %d\n", a, b, c);

        edges[i] = Edge(a - 1, b - 1, c);
    }

    auto costs = new long[](N);
    costs[1 .. N] = long.min / 2;

    void BellmanFord() {
        foreach (_; 0 .. N) {
            foreach (e; edges) {
                if (costs[e.from] == long.min / 2)
                    continue;

                costs[e.to] = max(costs[e.to], costs[e.from] + e.cost);
            }
        }
    }

    BellmanFord();

    long res = costs[N - 1];

    BellmanFord();

    writeln(res == costs[N - 1] ? res.to!string : "inf");
}
