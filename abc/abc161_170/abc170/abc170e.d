import std;

enum int M = 2 * 10 ^^ 5 + 1;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto rbts = new RedBlackTree!(int, "a > b", true)[](M);
    foreach (i; 0 .. M)
        rbts[i] = new RedBlackTree!(int, "a > b", true)();

    auto st = new SegmentTree!(int, min, int.max)(M);

    auto pos = new int[](N + 1), num = new int[](N + 1);
    foreach (i; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        rbts[B].insert(A);
        if (st.get(B) == int.max || st.get(B) < A)
            st.set(B, A);
        pos[i + 1] = B, num[i + 1] = A;
    }

    foreach (i; 0 .. Q) {
        int C, D;
        readf("%d %d\n", C, D);

        rbts[pos[C]].removeKey(num[C]);
        if (rbts[pos[C]].empty)
            st.set(pos[C], int.max);
        else if (rbts[pos[C]].front < num[C])
            st.set(pos[C], rbts[pos[C]].front);

        pos[C] = D;
        if (rbts[D].empty || rbts[D].front < num[C])
            st.set(D, num[C]);
        rbts[D].insert(num[C]);

        st.query(0, M).writeln;
    }
}

/// Segment tree
struct SegmentTree(T, alias op, T initialValue) {

    /// Constructor
    this(U)(U x) if (isIntegral!U) {
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
            data[size + i] = arr[i];
        }

        foreach_reverse (i; 1 .. size) {
            update(i);
        }
    }

    /// Assigns x to data[j].
    void set(U)(U j, T x) if (isIntegral!U)
    in (0 <= j && j < n) {
        j += size;
        data[j] = x;
        foreach (i; 1 .. e + 1) {
            update(j >> i);
        }
    }

    /// Returns data[j].
    T get(U)(U j) if (isIntegral!U)
    in (0 <= j && j < n) {
        return data[j + size];
    }

    /// Returns fun(data[l], ..., data[r-1]).
    T query(U)(U l, U r) if (isIntegral!U)
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

    //private:
    alias F = binaryFun!op;
    int n;
    int e;
    int size;
    T[] data;

    void update(U)(U j) {
        data[j] = F(data[2 * j], data[2 * j + 1]);
    }
}
