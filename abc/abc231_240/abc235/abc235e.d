import std;

void main() {
    int N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    int L = M + Q;

    auto a = new int[](L), b = new int[](L), c = new int[](L);
    foreach (i; 0 .. L) {
        readf("%d %d %d\n", a[i], b[i], c[i]);
        --a[i], --b[i];
    }

    auto d = iota(L).array;
    zip(a, b, c, d).sort!"a[2] < b[2]";

    auto uf = new UnionFind!int(N);
    auto res = new string[](Q);
    foreach (i; 0 .. L) {
        if (d[i] < M) {
            uf.unite(a[i], b[i]);
        }
        else {
            res[d[i]-M] = (uf.isSame(a[i], b[i]) ? "No" : "Yes");
        }
    }

    foreach (r; res) r.writeln;
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