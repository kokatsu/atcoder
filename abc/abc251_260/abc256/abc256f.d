import std;

enum long MOD = 998244353;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.dup;
    foreach (i, ref b; B) b = (b * (i + 1)) % MOD;

    auto C = B.dup;
    foreach (i, ref c; C) c = (c * (i + 1)) % MOD;

    auto st1 = new SegmentTree!(long, "a + b", 0)(A);
    auto st2 = new SegmentTree!(long, "a + b", 0)(B);
    auto st3 = new SegmentTree!(long, "a + b", 0)(C);

    long inv2 = powMod(2, MOD-2, MOD);

    foreach (_; 0 .. Q) {
        auto q = readln.chomp.split.to!(long[]);

        if (q[0] == 1) {
            long x = q[1], v = q[2];

            st1.set(x-1, v);

            v = (v * x) % MOD;
            st2.set(x-1, v);

            v = (v * x) % MOD;
            st3.set(x-1, v);
        }
        else {
            long x = q[1];

            long res = (st3.query(0, x) * inv2) % MOD;

            long t = (st2.query(0, x) * inv2) % MOD;
            t = (t * (x * 2 + 3)) % MOD;
            addMod(res, MOD-t);

            t = (st1.query(0, x) * inv2) % MOD;
            t = (t * (x + 1) % MOD * (x + 2)) % MOD;
            addMod(res, t);

            res.writeln;
        }
    }
}

long powMod(long x, long y, long z) {
    long res = 1;
    while (y > 0) {
        if (y % 2 == 1) {
            res *= x;
            if (res > z) res %= z;
        }
        x *= x;
        if (x > z) x %= z;
        y /= 2;
    }
    return res;
}

/// Segment tree
/// https://github.com/atcoder/ac-library/blob/master/atcoder/segtree.hpp
struct SegmentTree(T, alias fun, T initialValue) {

    /// Constructor
    this(T[] arr) {
        _n = arr.length.to!int;
        _size = 1;
        while (_size < _n) {
            ++_e;
            _size <<= 1;
        }
        _data.length = _size * 2;
        _data[] = initialValue;

        foreach (i; 0 .. _n) {
            _data[_size+i] = arr[i];
        }

        foreach_reverse (i; 1 .. _size) {
            update(i);
        }
    }

    /// Assigns x to _data[j].
    void set(long j, T x) {
        j += _size;
        _data[j] = x;
        foreach (i; 1 .. _e+1) {
            update(j>>i);
        }
    }

    /// Returns _data[j].
    T get(long j) {
        return _data[j+_size];
    }

    /// Returns fun(_data[l], ..., _data[r-1]).
    T query(long l, long r) {
        T sml = initialValue, smr = initialValue;
        l += _size, r += _size;

        while (l < r) {
            if (l & 1) {
                sml = F(sml, _data[l++]);
            }

            if (r & 1) {
                smr = F(_data[--r], smr);
            }

            l >>= 1, r >>= 1;
        }

        return F(sml, smr);
    }

private:
    // alias F = binaryFun!fun;
    int _n;
    int _e;
    int _size;
    T[] _data;

    void update(long j) {
        _data[j] = F(_data[2*j], _data[2*j+1]);
    }

    T F(T a, T b) {
        return (a + b) % MOD;
    }
}