import std;
import core.checkedint;

void main() {
    long N;
    readf("%d\n", N);

    long res;

    if (N > 0) {
        res = long.max;

        long L = min(N, 10^^6) + 1;
        foreach (a; 1 .. L) {
            long a2 = a * a;
            long ok = a + 1, ng = -1;
            while (ok - ng > 1) {
                long mid = (ok + ng) / 2;
                long mid2 = mid ^^ 2;

                bool over;
                long M = muls(a+mid, a2+mid2, over);
                (over || M >= N ? ok : ng) = mid;
            }

            bool isOver;
            long b = ok, b2 = b * b;
            long X = muls(a+b, a2+b2, isOver);
            if (!isOver && X >= N) res = min(res, X);
        }
    }

    res.writeln;
}