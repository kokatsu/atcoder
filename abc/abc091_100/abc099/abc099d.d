import std;

void main() {
    long N, C;
    readf("%d %d\n", N, C);

    auto D = new long[][](C);
    foreach (i; 0 .. C) D[i] = readln.chomp.split.to!(long[]);

    auto c = new long[][](N);
    foreach (i; 0 .. N) {
        c[i] = readln.chomp.split.to!(long[]);
        c[i][] -= 1;
    }

    auto wrong = new long[][](3, C);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            long p = (i + j) % 3;

            foreach (k; 0 .. C) {
                wrong[p][k] += D[c[i][j]][k];
            }
        }
    }

    long res = long.max;
    foreach (i; 0 .. C) {
        foreach (j; 0 .. C) {
            if (i == j) continue;

            foreach (k; 0 .. C) {
                if (i == k || j == k) continue;

                long num = wrong[0][i] + wrong[1][j] + wrong[2][k];
                res = min(res, num);
            }
        }
    }

    res.writeln;
}