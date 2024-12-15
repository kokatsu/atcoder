import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto graph = new int[][](N + 1);
    foreach (i; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        graph[A] ~= B;
    }

    int cnt;
    auto res = new int[](N + 1);
    auto uf = UnionFind!int(N + 1);
    foreach_reverse (i; 2 .. N + 1) {
        ++cnt;

        foreach (g; graph[i]) {
            if (uf.same(i, g)) {
                continue;
            }

            uf.unite(i, g);
            --cnt;
        }

        res[i - 1] = cnt;
    }

    foreach (r; res[1 .. N + 1]) {
        r.writeln;
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
