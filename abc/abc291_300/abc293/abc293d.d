import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto uf = new UnionFind!int(N*2);
    foreach (i; 0 .. N) {
        uf.unite(i*2, i*2+1);
    }

    int c;
    foreach (_; 0 .. M) {
        int A, C;
        dchar B, D;
        readf("%d %c %d %c\n", A, B, C, D);

        --A, --C;

        A *= 2, C *= 2;
        if (B == 'B') ++A;
        if (D == 'B') ++C;

        if (uf.root(A) == uf.root(C)) {
            ++c;
        }

        uf.unite(A, C);
    }

    int d;
    foreach (i; 0 .. N*2) {
        if (i == uf.root(i)) {
            ++d;
        }
    }

    d -= c;

    writeln(c, " ", d);
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