import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto P = readln.chomp.split.to!(int[]);

    P[] -= 1;

    auto uf = new UnionFind!int(N);
    long[][long] list;
    auto rbt = new RedBlackTree!(int, "a < b");

    int[] res = new int[](N);
    res[] = -1;

    foreach (i, p; P) {
        auto ub = rbt.upperBound(p);

        if (ub.empty) {
            list[p] ~= p;
            rbt.insert(p);
        }
        else {
            auto f = ub.front;
            int r = uf.root(f);
            list[r] ~= p;
            uf.unite(p, r);
            rbt.removeKey(f);
            rbt.insert(p);
        }

        int cnt = uf.size(p);
        if (cnt >= K) {
            auto r = uf.root(p);
            foreach (l; list[r]) {
                res[l] = i.to!int + 1;
            }
            rbt.removeKey(p);
        }
    }

    foreach (r; res) r.writeln;
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