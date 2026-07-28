import std;

void main() {
    int N, M, L;
    readfln("%d %d %d", N, M, L);

    int[] a = readln.chomp.split.to!(int[]);
    int[] b = readln.chomp.split.to!(int[]);

    bool[int][] S = new bool[int][](N);
    foreach (_; 0 .. L) {
        int c, d;
        readfln("%d %d", c, d);

        S[c - 1][d - 1] = true;
    }

    Tuple!(int, int)[] b_pairs = M.iota.map!(i => tuple(b[i], i)).array;
    b_pairs.sort!((x, y) => x[0] > y[0]);

    int res;
    foreach (i, x; a) {
        foreach (b_pair; b_pairs) {
            int y = b_pair[0];
            int j = b_pair[1];

            if (S[i].get(j, false)) {
                continue;
            }

            res = max(res, x + y);
            break;
        }
    }

    res.writeln;
}
