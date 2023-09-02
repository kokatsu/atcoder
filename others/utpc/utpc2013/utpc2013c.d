import std;

void main() {
    int n1, m1;
    readf("%d %d\n", n1, m1);

    auto edges1 = new int[][](n1);
    foreach (_; 0 .. m1) {
        int a, b;
        readf("%d %d\n", a, b);

        edges1[a] ~= b, edges1[b] ~= a;
    }

    int n2, m2;
    readf("%d %d\n", n2, m2);

    auto edges2 = new int[][](n2);
    foreach (_; 0 .. m2) {
        int a, b;
        readf("%d %d\n", a, b);

        edges2[a] ~= b, edges2[b] ~= a;
    }

    int bfs(int x, int n, int[][] edges) {
        auto dists = new int[](n);
        dists[] = int.max;
        dists[x] = 0;

        int[] queue;
        queue ~= x;
        while (!queue.empty) {
            auto f = queue.front;
            queue.popFront;

            foreach (e; edges[f]) {
                if (dists[e] <= dists[f] + 1) continue;

                dists[e] = dists[f] + 1;
                queue ~= e;
            }
        }

        return dists.maxElement;
    }

    int mn1 = int.max, mx1;
    auto dists1 = new int[](n1);
    foreach (i; 0 .. n1) {
        dists1[i] = bfs(i, n1, edges1);
        mn1 = min(mn1, dists1[i]), mx1 = max(mx1, dists1[i]);
    }

    int mn2 = int.max, mx2;
    auto dists2 = new int[](n2);
    foreach (i; 0 .. n2) {
        dists2[i] = bfs(i, n2, edges2);
        mn2 = min(mn2, dists2[i]), mx2 = max(mx2, dists2[i]);
    }

    int mn = max(mx1, mx2, mn1+mn2+1);
    int mx = mx1 + mx2 + 1;
    writefln("%d %d", mn, mx);
}