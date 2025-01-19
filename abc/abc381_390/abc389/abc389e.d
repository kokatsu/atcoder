import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto P = readln.chomp.split.to!(long[]);

    bool check(long x) {
        long s;
        foreach (p; P) {
            long k = (x / p + 1) / 2;
            if (k > 0 && M / k / k < p) {
                return false;
            }
            s += k ^^ 2 * p;
            if (s > M) {
                return false;
            }
        }
        return true;
    }

    long ok, ng = M + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;

        if (check(mid)) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    bool f(long x) {
        long k = (ng / x + 1) / 2;
        if (k == 0) {
            return false;
        }
        return (k * 2 - 1) * x == ng;
    }

    long s = P.map!(p => ((ok / p + 1) / 2) ^^ 2 * p).sum;
    long t = P.filter!(p => f(p))
        .count
        .to!long;

    long res = P.map!(p => (ok / p + 1) / 2).sum + min(t, (M - s) / ng);
    res.writeln;
}
