import std;

struct Edge {
    int dist, num;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](M), B = new int[](M), C = new int[](M);
    auto edges = new Edge[](M);
    foreach (i; 0 .. M) {
        readf("%d %d %d\n", A[i], B[i], C[i]);

        edges[i].dist = C[i], edges[i].num = i;
    }

    edges.sort!"a.dist < b.dist";

    auto uf = new UnionFind!int(N + 1);
    int res;
    foreach (e; edges) {
        if (!uf.isSame(A[e.num], B[e.num])) {
            uf.unite(A[e.num], B[e.num]);
            res += e.dist;
        }
    }

    res.writeln;
}

/// Union-Find
struct UnionFind(T) if (isIntegral!T) {

    /// Constructor
    this(T n) nothrow @safe {
        len = n;
        par.length = len;
        cnt.length = len;
        foreach (i; 0 .. len) {
            par[i] = i;
        }
        cnt[] = 1;
    }

    /// Returns the root of x.
    T root(T x) nothrow @nogc @safe
    in (0 <= x && x < len) {
        if (par[x] == x) {
            return x;
        }
        else {
            return par[x] = root(par[x]);
        }
    }

    /// Returns whether x and y have the same root.
    bool isSame(T x, T y) nothrow @nogc @safe
    in (0 <= x && x < len && 0 <= y && y < len) {
        return root(x) == root(y);
    }

    /// Unites x tree and y tree.
    void unite(T x, T y) nothrow @nogc @safe
    in (0 <= x && x < len && 0 <= y && y < len) {
        x = root(x), y = root(y);
        if (x == y) {
            return;
        }

        if (cnt[x] > cnt[y]) {
            swap(x, y);
        }

        cnt[y] += cnt[x];
        par[x] = y;
    }

    /// Returns the size of the x tree.
    T size(T x) nothrow @nogc @safe
    in (0 <= x && x < len) {
        return cnt[root(x)];
    }

private:
    T len;
    T[] par;
    T[] cnt;
}
