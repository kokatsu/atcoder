import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](M), B = new int[](M);
    foreach (i; 0 .. M)
        readf("%d %d\n", A[i], B[i]);

    int Q;
    readf("%d\n", Q);

    auto query = new int[][](Q);
    foreach (i; 0 .. Q)
        query[i] = readln.chomp.split.to!(int[]);

    auto seen = new bool[](M);
    foreach (q; query) {
        if (q[0] == 1)
            seen[--q[1]] = true;
    }

    auto uf = new UnionFind!int(N + 1);
    foreach (i; 0 .. M) {
        if (!seen[i])
            uf.unite(A[i], B[i]);
    }

    string[] res;
    foreach_reverse (q; query) {
        if (q[0] == 1)
            uf.unite(A[q[1]], B[q[1]]);
        else
            res ~= (uf.isSame(q[1], q[2]) ? "Yes" : "No");
    }

    res.reverse;

    writefln("%-(%s\n%)", res);
}

/// Union-Find
struct UnionFind(T) if (isIntegral!T) {

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
