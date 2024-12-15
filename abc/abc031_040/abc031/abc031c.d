import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int res = int.min;
    foreach (i; 0 .. N) {
        int Tak = int.min, Aoki = int.min;

        foreach (j; 0 .. N) {
            if (i == j)
                continue;

            int cnt, l = min(i, j), r = max(i, j), even, odd;
            foreach (k; l .. r + 1) {
                (cnt++ & 1 ? even : odd) += a[k];
            }

            if (Aoki < even) {
                Tak = odd, Aoki = even;
            }
        }

        res = max(res, Tak);
    }

    res.writeln;
}
