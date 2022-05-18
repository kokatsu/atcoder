import std;

void main() {
    long A, B, Q;
    readf("%d %d %d\n", A, B, Q);

    auto s = new long[](A);
    foreach (i; 0 .. A) readf("%d\n", s[i]);

    auto t = new long[](B);
    foreach (i; 0 .. B) readf("%d\n", t[i]);

    auto r = new SortedRange!(long[])[](2);
    r[0] = s.assumeSorted;
    r[1] = t.assumeSorted;

    void f(long st, long pos, long idx, ref long num) {
        auto lb = r[idx].lowerBound(pos);
        if (!lb.empty) {
            num = min(num, abs(st-pos)+abs(pos-lb.back));
        }

        auto ub = r[idx].upperBound(pos);
        if (!ub.empty) {
            num = min(num, abs(st-pos)+abs(pos-ub.front));
        }
    }

    foreach (_; 0 .. Q) {
        long x;
        readf("%d\n", x);

        long res = long.max;

        foreach (i; 0 .. 2) {
            auto l = r[i].lowerBound(x);
            if (!l.empty) f(x, l.back, (i+1)%2, res);

            auto u = r[i].upperBound(x);
            if (!u.empty) f(x, u.front, (i+1)%2, res);
        }

        res.writeln;
    }
}