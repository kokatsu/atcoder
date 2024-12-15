import std;

void main() {
    int N;
    readf("%d\n", N);

    int L, R;
    readf("%d %d\n", L, R);
    writeln(0);

    foreach (i; 1 .. N) {
        int l, r;
        readf("%d %d\n", l, r);

        L = max(L, l), R = min(R, r);

        int res;
        if (L > R) {
            res = (L - R + 1) / 2;
        }

        res.writeln;
    }
}
