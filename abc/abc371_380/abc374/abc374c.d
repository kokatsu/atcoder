import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] K = readln.chomp.split.to!(int[]);

    int S = K.sum, L = 1 << N;

    int res = S;
    foreach (i; 0 .. L) {
        int M;
        foreach (j, k; K) {
            if ((i >> j) & 1) {
                M += k;
            }
        }

        res = min(res, max(M, S - M));
    }

    res.writeln;
}
