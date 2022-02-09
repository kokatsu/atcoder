import std;

struct S {
    long from, to, cost;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new S[](M);
    foreach (i; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        edge[i] = S(A, B, C);
    }

    edge.sort!"a.cost < b.cost";

    auto uf = UnionFind!long(N);
    long res;
    foreach (e; edge) {
        if (!uf.same(e.from, e.to)) uf.unite(e.from, e.to);
        else if (e.cost > 0) res += e.cost;
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