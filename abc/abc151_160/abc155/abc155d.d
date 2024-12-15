import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;
    auto t = A.assumeSorted.trisect(0);

    long nl = t[0].length * t[2].length;
    if (nl >= K) {
        long ok, ng = long.min / 2;
        while (ok - ng > 1) {
            long mid = (ok + ng) / 2;

            long cnt;
            foreach (a; A) {
                if (a < 0) {
                    cnt += t[2].upperBound((mid + 1) / a).length;
                }
            }

            (cnt >= K ? ok : ng) = mid;
        }

        ok.writeln;
        return;
    }

    K -= nl;

    long l = t[1].length;
    long zl = l * (t[0].length + t[2].length) + l * (l - 1) / 2;
    if (zl >= K) {
        0.writeln;
        return;
    }

    K -= zl;

    long ok = long.max / 2, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long cnt;
        foreach (a; A) {
            if (a < 0) {
                cnt += t[0].upperBound(mid / a - 1).length;
                if (a ^^ 2 <= mid)
                    --cnt;
            }
            else if (a > 0) {
                cnt += t[2].lowerBound(mid / a + 1).length;
                if (a ^^ 2 <= mid)
                    --cnt;
            }
        }

        (cnt / 2 >= K ? ok : ng) = mid;
    }

    ok.writeln;
}
