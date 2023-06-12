import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto st = new SegmentTree!(int, max, 0)(N);

    foreach (_; 0 .. Q) {
        int op, x, y;
        readf("%d %d %d\n", op, x, y);

        if (op == 1) {
            st.set(x-1, y);
        }
        else {
            st.query(x-1, y-1).writeln;
        }
    }
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