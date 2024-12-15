import std;

enum long MOD = 998244353;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y % 2 == 1) {
            res *= x;
            if (res > MOD)
                res %= MOD;
        }
        x *= x;
        if (x > MOD)
            x %= MOD;
        y /= 2;
    }
    return res;
}

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long M = A.maxElement + 1;

    auto ft1 = new FenwickTree!long(M), ft2 = new FenwickTree!long(M);
    long num;
    foreach (i, a; A) {
        long l = ft1.sum(a) * a % MOD;
        long u = (ft2.sum(M) - ft2.sum(a) + MOD) % MOD;

        addMod(num, (l + u) * 2 + a);

        ft1.add(a, 1), ft2.add(a, a);

        long res = num * powMod((to!long(i + 1) ^^ 2) % MOD, MOD - 2) % MOD;
        res.writeln;
    }
}

struct FenwickTree(T) if (isIntegral!T) {

    /// Constructor
    this(U)(U n) if (isIntegral!U) {
        size = n.to!T + 1;
        data.length = size;
    }

    /// Adds val to data[idx].
    void add(U)(U idx, T val) if (isIntegral!U)
    in (0 < idx && idx < size) {
        U i = idx;
        while (i < size) {
            data[i] += val;
            i += i & -i;
        }
    }

    /// Returns sum(data[1], ..., data[idx]).
    T sum(U)(U idx) if (isIntegral!U)
    in (0 <= idx && idx < size) {
        if (idx == 0) {
            return 0;
        }

        T res;
        U i = idx;
        while (i > 0) {
            res += data[i];
            i -= i & -i;
        }
        return res;
    }

    /// Returns the smallest pos that satisfies sum(_tree[1], ..., _tree[pos]) >= x.
    U lowerBound(U = T)(T x) {
        import core.bitop : bsr;

        if (x <= 0) {
            return 0;
        }

        U pos, i = 1 << size.bsr;
        while (i > 0) {
            U t = pos + i;
            if (t < size && data[t] < x) {
                pos = t;
                x -= data[t];
            }
            i >>= 1;
        }
        ++pos;

        return pos;
    }

private:
    T size;
    T[] data;
}
