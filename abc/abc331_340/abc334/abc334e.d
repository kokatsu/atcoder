import std;

enum long MOD = 998244353;

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y & 1) {
            res *= x;
            if (res > MOD)
                res %= MOD;
        }
        x *= x;
        if (x > MOD)
            x %= MOD;
        y >>= 1;
    }
    return res;
}

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    long N = H * W;

    auto S = new string[](H);
    long[] R;
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j; 0 .. W) {
            long p = i * W + j;

            if (S[i][j] == '.') {
                R ~= p;
            }
        }
    }

    long[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];
    auto seen = new bool[][](H, W);
    auto uf = new UnionFind!long(N);
    void f(long x, long y) {
        seen[x][y] = true;
        long p = x * W + y;

        foreach (i; 0 .. 4) {
            long nx = x + dx[i], ny = y + dy[i];
            if (nx < 0 || nx >= H || ny < 0 || ny >= W || S[nx][ny] == '.' || seen[nx][ny])
                continue;

            long q = nx * W + ny;
            uf.unite(p, q);
            f(nx, ny);
        }
    }

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (seen[i][j] || S[i][j] == '.')
                continue;
            f(i, j);
        }
    }

    long cnt;
    foreach (i; 0 .. N) {
        long x = i / W, y = i % W;
        if (S[x][y] == '#' && uf.root(i) == i)
            ++cnt;
    }

    long num;
    foreach (r; R) {
        bool[long] dict;

        long x = r / W, y = r % W;
        foreach (i; 0 .. 4) {
            long nx = x + dx[i], ny = y + dy[i];
            if (nx < 0 || nx >= H || ny < 0 || ny >= W || S[nx][ny] == '.')
                continue;

            long p = nx * W + ny;
            dict[uf.root(p)] = true;
        }

        num = (num + cnt - dict.length.to!long + 1) % MOD;
    }

    long res = num * powMod(R.length.to!long, MOD - 2) % MOD;
    res.writeln;
}

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

        if (x < y) {
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
