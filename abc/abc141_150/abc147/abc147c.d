import std;
import core.bitop;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new long[](N);
    auto x = new long[][](N), y = new long[][](N);
    foreach (i; 0 .. N) {
        readf("%d\n", A[i]);

        foreach (_; 0 .. A[i]) {
            int u, v;
            readf("%d %d\n", u, v);

            --u;
            x[i] ~= u, y[i] ~= v;
        }
    }

    long res;
    foreach (i; 0 .. 1<<N) {
        bool isOK = true;

        foreach (j, s; x) {
            if (!((i >> j) & 1)) continue;

            foreach (k, t; s) {
                if (((i >> t) & 1) ^ y[j][k]) isOK = false;
            }
        }

        if (isOK) res = max(res, i.popcnt);
    }

    res.writeln;
}