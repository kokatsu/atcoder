import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto a = new int[](M), b = new int[](M);
    foreach (i; 0 .. M)
        readf("%d %d\n", a[i], b[i]);

    long res;
    foreach (i; 0 .. M) {
        auto uf = UnionFind!int(N + 1);

        foreach (j; 0 .. M) {
            if (i == j)
                continue;

            uf.unite(a[j], b[j]);
        }

        if (!uf.same(a[i], b[i]))
            ++res;
    }

    res.writeln;
}

/// Union-Find
struct UnionFind(T) {

    /// Constructor
    this(T n) {
        _par.length = n;
        _cnt.length = n;
        foreach (i; 0 .. n) {
            _par[i] = i;
        }
        _cnt[] = 1;
    }

    /// Return the root of x.
    T root(T x) {
        if (_par[x] == x) {
            return x;
        }
        else {
            return _par[x] = root(_par[x]);
        }
    }

    /// Return whether x and y have the same root.
    bool same(T x, T y) {
        return root(x) == root(y);
    }

    /// Unite x tree and y tree.
    void unite(T x, T y) {
        x = root(x), y = root(y);
        if (x == y) {
            return;
        }

        if (_cnt[x] > _cnt[y]) {
            swap(x, y);
        }

        _cnt[y] += _cnt[x];
        _par[x] = y;
    }

    /// Return the size of the x tree.
    T size(T x) {
        return _cnt[root(x)];
    }

private:
    T[] _par;
    T[] _cnt;
}
