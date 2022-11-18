import std;

void main() {
    long N;
    readf("%d\n", N);

    auto u = new long[](N-1), v = new long[](N-1), w = new long[](N-1);
    foreach (i; 0 .. N-1) {
        readf("%d %d %d\n", u[i], v[i], w[i]);
    }

    zip(u, v, w).sort!"a[2] < b[2]";

    auto uf = new UnionFind!long(N+1);

    long res;
    foreach (i; 0 .. N-1) {
        long x = uf.size(u[i]), y = uf.size(v[i]);
        res += w[i] * x * y;
        uf.unite(u[i], v[i]);
    }

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