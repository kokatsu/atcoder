import std;

void main() {
    int N;
    readf("%d\n", N);

    auto cnts = new int[][](10, 10);
    foreach (i; 1 .. N+1) {
        if (i % 10 == 0) continue;

        int f = i, b = i % 10;
        while (f >= 10) f /= 10;

        ++cnts[f][b];
    }

    int res;
    foreach (i; 1 .. 10) {
        foreach (j; 1 .. 10) {
            res += cnts[i][j] * cnts[j][i];
        }
    }

    res.writeln;
}