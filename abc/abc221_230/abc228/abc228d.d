import std;

void main() {
    int Q;
    readf("%d\n", Q);

    long N = 1048576;

    auto A = new long[](N);
    A[] = -1;

    auto rbt = iota(0L, N).array.redBlackTree;

    foreach (i; 0 .. Q) {
        long t, x;
        readf("%d %d\n", t, x);

        if (t == 1) {
            long h = x;
            long g = h % N;

            if (A[g] == -1) {
                A[g] = h;
                rbt.removeKey(g);
                continue;
            }

            auto u = rbt.upperBound(g);
            if (!u.empty) {
                long f = u.front;
                A[f] = x;
                rbt.removeKey(f);
                continue;
            }

            auto v = rbt.upperBound(-1);
            long f = v.front;
            A[f] = x;
            rbt.removeKey(f);
        }
        else {
            A[x % N].writeln;
        }
    }
}
