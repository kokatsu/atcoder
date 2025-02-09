import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto G = new int[][](N);
    foreach (_; 0 .. M) {
        int u, v;
        readf("%d %d\n", u, v);

        --u, --v;
        G[u] ~= v, G[v] ~= u;
    }

    string res = check(N, M, G) ? "Yes" : "No";
    res.writeln;
}

bool check(int x, int y, int[][] g) {
    if (x != y + 1) {
        return false;
    }

    foreach (n; g) {
        if (n.length > 2) {
            return false;
        }
    }

    auto path = new bool[](x);
    path[0] = true;
    int[] queue = [0];
    while (!queue.empty) {
        int f = queue.front;
        queue.popFront;

        foreach (p; g[f]) {
            if (!path[p]) {
                path[p] = true;
                queue ~= p;
            }
        }
    }

    return path.all;
}
