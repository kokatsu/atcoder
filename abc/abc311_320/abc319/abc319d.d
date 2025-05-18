import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto L = readln.chomp.split.to!(long[]);

    long ok = L.sum + N - 1, ng = L.maxElement - 1;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long row = 1, col;
        foreach (l; L) {
            col += col == 0 ? l : l + 1;
            if (col > mid) {
                ++row;
                col = l;
            }
        }

        (row <= M ? ok : ng) = mid;
    }

    long res = ok;
    res.writeln;
}
