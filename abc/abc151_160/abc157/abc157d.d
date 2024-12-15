import std;

void main() {
    int N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto uf = UnionFind!int(N);

    auto A = new int[](M), B = new int[](M);
    foreach (i; 0 .. M) {
        readf("%d %d\n", A[i], B[i]);
        --A[i], --B[i];

        uf.unite(A[i], B[i]);
    }

    auto C = new int[](K), D = new int[](K);
    foreach (i; 0 .. K) {
        readf("%d %d\n", C[i], D[i]);
        --C[i], --D[i];
    }

    auto candidates = new int[](N);
    foreach (i; 0 .. N) {
        candidates[i] = uf.size(i) - 1;
    }

    foreach (i; 0 .. M) {
        if (uf.same(A[i], B[i])) {
            --candidates[A[i]], --candidates[B[i]];
        }
    }

    foreach (i; 0 .. K) {
        if (uf.same(C[i], D[i])) {
            --candidates[C[i]], --candidates[D[i]];
        }
    }

    writefln("%(%s %)", candidates);
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
