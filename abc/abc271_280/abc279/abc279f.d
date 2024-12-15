import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    int M = N + Q + 1;

    auto uf = new UnionFind!int(M);

    auto boxes = new int[](M), f = new int[](N + 1);
    foreach (i; 1 .. N + 1)
        boxes[i] = f[i] = i;

    int cnt = N;
    foreach (_; 0 .. Q) {
        auto op = readln.chomp.split.to!(int[]);

        if (op[0] == 1) {
            int X = op[1], Y = op[2];
            if (f[Y] == 0)
                continue;

            if (f[X] == 0) {
                f[X] = f[Y];
            }
            else {
                uf.unite(f[X], f[Y]);
                f[X] = uf.root(f[X]);
            }

            boxes[f[X]] = X;
            f[Y] = 0;
        }
        else if (op[0] == 2) {
            int X = op[1];

            ++cnt;

            if (f[X] == 0) {
                f[X] = cnt;
            }
            else {
                uf.unite(f[X], cnt);
                f[X] = uf.root(f[X]);
            }

            boxes[f[X]] = X;
        }
        else {
            int X = op[1];

            int res = boxes[uf.root(X)];
            res.writeln;
        }
    }
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
