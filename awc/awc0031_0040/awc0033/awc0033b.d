import std;

void main() {
    int N, K, L, R;
    readfln("%d %d %d %d", N, K, L, R);

    long[] T = readln.chomp.split.to!(long[]);

    long f(long x) {
        if (x < L) {
            return L - x;
        }

        if (R < x) {
            return x - R;
        }

        return 0;
    }

    long[] F = T.map!(t => f(t)).array;

    F.sort;

    long res = F[0 .. K].sum;
    res.writeln;
}
