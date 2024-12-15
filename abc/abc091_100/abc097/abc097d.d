import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto p = readln.chomp.split.to!(int[]);
    p[] -= 1;

    auto uf = UnionFind!int(N);

    foreach (_; 0 .. M) {
        int x, y;
        readf("%d %d\n", x, y);

        --x, --y;
        uf.unite(p[x], p[y]);
    }

    int res;
    foreach (i, x; p) {
        if (uf.same(i.to!int, x))
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
