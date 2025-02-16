import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](M), B = new int[](M);
    foreach (i; 0 .. M) {
        readf("%d %d\n", A[i], B[i]);
    }

    A[] -= 1, B[] -= 1;

    int[] list;
    auto uf = new UnionFind!int(N);
    foreach (i; 0 .. M) {

        if (uf.isSame(A[i], B[i])) {
            list ~= i;
            if (A[i] > B[i]) {
                swap(A[i], B[i]);
            }
        }
        else {
            uf.unite(A[i], B[i]);
        }
    }

    list.sort!((a, b) => A[a] < A[b]);

    int index;
    Tuple!(int, int, int)[] cables;

    if (uf.size(0) == 1 && A[list[index]] != 0) {
        int L = list[index++];
        uf.unite(A[L], 0);
        cables ~= tuple(L + 1, B[L] + 1, 1);
    }

    foreach (i; 1 .. N) {
        if (uf.isSame(0, i)) {
            continue;
        }
        int L = list[index++];
        uf.unite(A[L], i);
        cables ~= tuple(L + 1, B[L] + 1, i + 1);
    }

    auto res = cables.empty ? "0" : format("%d\n%(%(%d %d %d%)\n%)", cables.length, cables);
    res.writeln;
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
