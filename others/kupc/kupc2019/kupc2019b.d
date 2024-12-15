import std;

void main() {
    int n, m, W;
    readf("%d %d %d\n", n, m, W);

    auto w = new int[](n), v = new int[](n);
    foreach (i; 0 .. n)
        readf("%d %d\n", w[i], v[i]);

    auto uf = new UnionFind!int(n);
    foreach (i; 0 .. m) {
        int a, b;
        readf("%d %d\n", a, b);

        uf.unite(a - 1, b - 1);
    }

    foreach (i; 0 .. n) {
        if (i != uf.root(i)) {
            w[uf.root(i)] += w[i], v[uf.root(i)] += v[i];
            w[i] = v[i] = 0;
        }
    }

    w = w.filter!"a > 0".array;
    v = v.filter!"a > 0".array;

    int[] dp = new int[](W + 1);
    foreach (x, y; zip(w, v)) {
        foreach_reverse (i; x .. W + 1) {
            dp[i] = max(dp[i], dp[i - x] + y);
        }
    }

    int res = dp[W];
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
