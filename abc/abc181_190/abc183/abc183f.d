import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto C = readln.chomp.split.to!(long[]);

    auto D = new long[long][](N);
    foreach (i, c; C)
        ++D[i][c - 1];

    auto uf = new UnionFind!long(N);
    foreach (_; 0 .. Q) {
        long x, y, z;
        readf("%d %d %d\n", x, y, z);

        --y, --z;

        if (x == 1) {
            if (uf.isSame(y, z))
                continue;

            long u = uf.root(y), v = uf.root(z);
            uf.unite(u, v);

            if (uf.root(u) == u)
                swap(u, v);

            foreach (key, val; D[u])
                D[v][key] += val;
        }
        else {
            long res, r = uf.root(y);
            if (z in D[r])
                res = D[r][z];

            res.writeln;
        }
    }
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

    /// Returns the root of x.
    T root(T x) {
        if (_par[x] == x) {
            return x;
        }
        else {
            return _par[x] = root(_par[x]);
        }
    }

    /// Returns whether x and y have the same root.
    bool isSame(T x, T y) {
        return root(x) == root(y);
    }

    /// Unites x tree and y tree.
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

    /// Returns the size of the x tree.
    T size(T x) {
        return _cnt[root(x)];
    }

private:
    T[] _par;
    T[] _cnt;
}
