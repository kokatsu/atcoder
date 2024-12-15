import std;

struct Pair {
    int a, b;
}

void main() {
    int N, K, L;
    readf("%d %d %d\n", N, K, L);

    auto roads = new UnionFind!int(N);
    foreach (_; 0 .. K) {
        int p, q;
        readf("%d %d\n", p, q);

        --p, --q;
        roads.unite(p, q);
    }

    auto rails = new UnionFind!int(N);
    foreach (_; 0 .. L) {
        int r, s;
        readf("%d %d\n", r, s);

        --r, --s;
        rails.unite(r, s);
    }

    int[Pair] cnts;
    foreach (i; 0 .. N) {
        ++cnts[Pair(roads.root(i), rails.root(i))];
    }

    auto res = iota(N).map!(i => cnts[Pair(roads.root(i), rails.root(i))]).array;
    writefln("%(%s %)", res);
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
