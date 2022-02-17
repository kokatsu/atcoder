import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](M), B = new int[](M);
    foreach (i; 0 .. M) {
        readf("%d %d\n", A[i], B[i]);
        --A[i], --B[i];
    }

    auto uf = new UnionFind!long(N);

    long num = N * (N - 1) / 2;
    auto list = new long[](M);
    foreach_reverse (i; 0 .. M) {
        list[i] = num;

        if (!uf.same(A[i], B[i])) {
            num -= uf.size(A[i]) * uf.size(B[i]);
            uf.unite(A[i], B[i]);
        }
    }

    foreach (l; list) l.writeln;
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