import std;

void main() {
    long L, N1, N2;
    readf("%d %d %d\n", L, N1, N2);

    auto v1 = new long[](N1), l1 = new long[](N1);
    foreach (i; 0 .. N1) readf("%d %d\n", v1[i], l1[i]);

    auto v2 = new long[](N2), l2 = new long[](N2);
    foreach (i; 0 .. N2) readf("%d %d\n", v2[i], l2[i]);

    long res, pos, idx1, idx2;
    while (pos < L) {
        long mn = min(l1[idx1], l2[idx2]);
        if (v1[idx1] == v2[idx2]) {
            res += mn;
        }

        pos += mn;

        if (l1[idx1] == mn) {
            ++idx1;
        }
        else {
            l1[idx1] -= mn;
        }

        if (l2[idx2] == mn) {
            ++idx2;
        }
        else {
            l2[idx2] -= mn;
        }
    }

    res.writeln;
}