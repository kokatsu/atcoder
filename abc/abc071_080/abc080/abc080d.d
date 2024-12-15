import std;

void main() {
    int N, C;
    readf("%d %d\n", N, C);

    int L = 2 * 10 ^^ 5 + 1;
    auto cnts = new long[][](C, L);
    foreach (_; 0 .. N) {
        int s, t, c;
        readf("%d %d %d\n", s, t, c);

        ++cnts[c - 1][s * 2 - 1], --cnts[c - 1][t * 2];
    }

    long res;
    auto rec = new int[](L);
    foreach (i; 0 .. C) {
        foreach (j; 1 .. L) {
            cnts[i][j] += cnts[i][j - 1];

            if (cnts[i][j] > 0)
                res = max(res, ++rec[j]);
        }
    }

    res.writeln;
}
