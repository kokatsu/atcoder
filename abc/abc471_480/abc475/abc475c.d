import std;

void main() {
    long N, S, L;
    readfln("%d %d %d", N, S, L);

    long[] A = readln.chomp.split.to!(long[]);

    --S;
    long[] C = new long[](N);
    C[1 .. N] = A.cumulativeFold!"a + b".array;

    long res;
    foreach (i; 0 .. S + 1) {
        foreach (j; S .. N) {
            long X = C[S] - C[i], Y = C[j] - C[S];

            if (min(X * 2 + Y, X + Y * 2) <= L) {
                res = max(res, j - i + 1);
            }
        }
    }

    res.writeln;
}
