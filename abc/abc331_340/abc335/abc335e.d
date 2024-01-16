import std;

struct S {
    int from, to;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto uf = new UnionFind!int(N);
    auto edges = new int[][](N);
    foreach (_; 0 .. M) {
        int U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        edges[U] ~= V, edges[V] ~= U;

        if (A[U] == A[V]) {
            uf.unite(U, V);
        }
    }

    int L = A.maxElement + 1;
    auto roots = new int[](N);
    auto pruned = new S[][](L);
    foreach (i; 0 .. N) {
        roots[i] = uf.root(i);

        foreach (e; edges[i]) {
            if (A[i] < A[e]) {
                pruned[A[i]] ~= S(i, e);
            }
        }
    }

    auto dp = new int[](N);
    dp[roots[0]] = 1;
    foreach (i; 0 .. L) {
        foreach (p; pruned[i]) {
            if (dp[roots[p.from]] > 0) {
                dp[roots[p.to]] = max(dp[roots[p.to]], dp[roots[p.from]]+1);
            }
        }
    }

    int res = dp[uf.root(N-1)];
    res.writeln;
}

/// Union-Find
struct UnionFind(T)
if (isIntegral!T) {

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