import std;

alias SegTree = SegmentTree!(long, "a ^ b", 0);

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(long[]);

    auto ST = SegTree(A);
    foreach (i; 0 .. Q) {
        long T, X, Y;
        readf("%d %d %d\n", T, X, Y);

        --X;

        if (T == 1) {
            long B = ST.get(X) ^ Y;
            ST.set(X, B);
        }
        else {
            ST.query(X, Y).writeln;
        }
    }
}

// Segment tree
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
            _data[_size + i] = arr[i];
        }

        foreach_reverse (i; 1 .. _size) {
            update(i);
        }
    }

    /// Assigns x to _data[j].
    void set(long j, T x) {
        j += _size;
        _data[j] = x;
        foreach (i; 1 .. _e + 1) {
            update(j >> i);
        }
    }

    /// Returns _data[j].
    T get(long j) {
        return _data[j + _size];
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
    alias F = binaryFun!fun;
    int _n;
    int _e;
    int _size;
    T[] _data;

    void update(long j) {
        _data[j] = F(_data[2 * j], _data[2 * j + 1]);
    }
}
