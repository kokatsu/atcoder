import std;

void main() {
    int N, L, R;
    readf("%d %d %d\n", N, L, R);

    auto X = readln.chomp.split.to!(int[]);

    auto S = X.assumeSorted;

    auto st = new SegmentTree!(int, min, 1<<30)(N);
    st.set(0, 0);
    foreach (i; 1 .. N) {
        auto lb1 = S.lowerBound(X[i]-R);
        auto lb2 = S.lowerBound(X[i]-L+1);
        ulong l = lb1.length, r = lb2.length;
        st.set(i, st.query(l, r)+1);
    }

    int res = st.get(N-1);
    res.writeln;
}

/// Segment tree
struct SegmentTree(T, alias op, T initialValue) {

    /// Constructor
    this(U)(U x)
    if (isIntegral!U) {
        n = x.to!int;
        size = 1;
        while (size < n) {
            ++e;
            size <<= 1;
        }
        data.length = size * 2;
        data[] = initialValue;
    }

    /// Constructor
    this(T[] arr) {
        n = arr.length.to!int;
        this(n);

        foreach (i; 0 .. n) {
            data[size+i] = arr[i];
        }

        foreach_reverse (i; 1 .. size) {
            update(i);
        }
    }

    /// Assigns x to data[j].
    void set(U)(U j, T x)
    if (isIntegral!U)
    in (0 <= j && j < n) {
        j += size;
        data[j] = x;
        foreach (i; 1 .. e+1) {
            update(j>>i);
        }
    }

    /// Returns data[j].
    T get(U)(U j)
    if (isIntegral!U)
    in (0 <= j && j < n) {
        return data[j+size];
    }

    /// Returns fun(data[l], ..., data[r-1]).
    T query(U)(U l, U r)
    if (isIntegral!U)
    in (0 <= l && l <= r && r <= n) {
        T sml = initialValue, smr = initialValue;
        l += size, r += size;

        while (l < r) {
            if (l & 1) {
                sml = F(sml, data[l++]);
            }

            if (r & 1) {
                smr = F(data[--r], smr);
            }

            l >>= 1, r >>= 1;
        }

        return F(sml, smr);
    }

private:
    alias F = binaryFun!op;
    int n;
    int e;
    int size;
    T[] data;

    void update(U)(U j) {
        data[j] = F(data[2*j], data[2*j+1]);
    }
}