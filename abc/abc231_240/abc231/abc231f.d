import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    void f(ref long[] arr) {
        auto tmp = arr.dup.sort.uniq.array.assumeSorted;
        foreach (ref a; arr) {
            a = tmp.lowerBound(a).length;
        }
    }

    A[] *= -1;
    f(B);

    zip(A, B).sort;

    auto st = new SegmentTree!(long, "a + b", 0)(0L.repeat.take(N).array);

    long res;
    for (int i = 0; i < N; ++i) {
        long cnt = 1;
        while (i + 1 < N && A[i] == A[i+1] && B[i] == B[i+1]) {
            ++cnt, ++i;
        }

        res += (st.query(0, B[i]+1) + cnt) * cnt;
        st.set(B[i], st.get(B[i])+cnt);
    }

    res.writeln;
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
    alias F = binaryFun!fun;
    int _n;
    int _e;
    int _size;
    T[] _data;

    void update(long j) {
        _data[j] = F(_data[2*j], _data[2*j+1]);
    }
}