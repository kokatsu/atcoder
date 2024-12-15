import std;

void main() {
    int H, W, Q;
    readf("%d %d\n%d\n", H, W, Q);

    auto isRed = new bool[][](H, W);
    auto uf = UnionFind!int(H * W);
    foreach (_; 0 .. Q) {
        auto input = readln.chomp.split.to!(int[]);

        if (input[0] == 1) {
            int r = input[1], c = input[2];

            --r, --c;

            isRed[r][c] = true;

            int pos = r * W + c;

            foreach (i; 0 .. 4) {
                int dr = (i >> 1) & 1, dc = i & 1;
                if (dr == dc) {
                    dr -= 1, dc *= -1;
                }

                int nr = r + dr, nc = c + dc;
                if (nr < 0 || nr >= H || nc < 0 || nc >= W) {
                    continue;
                }

                if (!isRed[nr][nc]) {
                    continue;
                }

                int npos = nr * W + nc;
                uf.unite(pos, npos);
            }

        }
        else {
            int ra = input[1], ca = input[2];
            int rb = input[3], cb = input[4];

            --ra, --ca;
            --rb, --cb;

            int posa = ra * W + ca;
            int posb = rb * W + cb;

            bool isOK = isRed[ra][ca] && isRed[rb][cb] && uf.same(posa, posb);

            writeln(isOK ? "Yes" : "No");
        }
    }
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
