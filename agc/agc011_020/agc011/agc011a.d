import std;

void main() {
    int N, C, K;
    readf("%d %d %d\n", N, C, K);

    auto T = new int[](N);
    foreach (i; 0 .. N)
        readf("%d\n", T[i]);

    T.sort;

    int res = 1, cnt, stp = T[0];
    foreach (t; T) {
        if (stp <= t && t <= stp + K && cnt < C) {
            ++cnt;
        }
        else {
            ++res, cnt = 1, stp = t;
        }
    }

    res.writeln;
}
