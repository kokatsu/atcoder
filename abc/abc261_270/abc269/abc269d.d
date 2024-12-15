import std;

void main() {
    int N;
    readf("%d\n", N);

    int lim = 1000, S = ((lim + 10) * 2) ^^ 2 + 1;
    auto black = new bool[](S);

    auto X = new int[](N), Y = new int[](N);
    auto list = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", X[i], Y[i]);

        list[i] = (X[i] + lim) * lim * 2 + (Y[i] + lim);
        black[list[i]] = true;
    }

    auto uf = new UnionFind!int(S);

    int[] dx = [-1, -1, 0, 0, 1, 1];
    int[] dy = [-1, 0, -1, 1, 0, 1];

    foreach (i; 0 .. N) {
        foreach (j; 0 .. 6) {
            int x = X[i] + dx[j], y = Y[i] + dy[j];
            if (x.abs > lim || y.abs > lim)
                continue;

            int idx = (x + lim) * lim * 2 + (y + lim);
            if (black[idx])
                uf.unite(list[i], idx);
        }
    }

    int res;
    foreach (i; 0 .. S) {
        if (!black[i])
            continue;

        if (uf.root(i) == i)
            ++res;
    }

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
