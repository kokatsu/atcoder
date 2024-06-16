import std;

void main() {
    int N, L;
    readf("%d %d\n", N, L);

    auto x = readln.chomp.split.to!(int[]);

    int T1, T2, T3;
    readf("%d %d %d\n", T1, T2, T3);

    auto isHurdle = new bool[](L+1);
    foreach (a; x) isHurdle[a] = true;

    auto dists = new int[](L+1);
    dists[1..$] = int.max;

    foreach (i; 0 .. L) {
        int D = isHurdle[i] ? T3 : 0;

        dists[i+1] = min(dists[i+1], dists[i] + T1 + D);

        if (i < L - 1) {
            dists[i+2] = min(dists[i+2], dists[i] + T1 + T2 + D);
        }
        else {
            dists[L] = min(dists[L], dists[i] + T1 / 2 + T2 / 2 + D);
        }

        if (i < L - 3) {
            dists[i+4] = min(dists[i+4], dists[i] + T1 + T2 * 3 + D);
        }
        else {
            int m = L - i - 1;
            dists[L] = min(dists[L], dists[i] + T1 / 2 + T2 * m + T2 / 2 + D);
        }
    }

    int res = dists[L];
    res.writeln;
}