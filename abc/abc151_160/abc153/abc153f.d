import std;

void main() {
    long N, D, A;
    readf("%d %d %d\n", N, D, A);

    auto X = new long[](N), H = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", X[i], H[i]);

    zip(X, H).sort!"a[0] < b[0]";

    long[] pos, dmg;
    long res, num;
    foreach (i, x; X) {
        while (!pos.empty && pos[0] < x) {
            num -= dmg[0];
            pos.popFront, dmg.popFront;
        }

        H[i] -= num;

        if (H[i] > 0) {
            long cnt = (H[i] + A - 1) / A;
            long tmp = A * cnt;

            res += cnt, num += tmp;
            pos ~= x + D * 2, dmg ~= tmp;
        }
    }

    res.writeln;
}