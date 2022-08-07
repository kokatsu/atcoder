import std;

void main() {
    long N, P, Q;
    readf("%d %d %d\n", N, P, Q);

    auto A = readln.chomp.split.to!(long[]);

    long res;
    foreach (i; 0 .. N-4) {
        foreach (j; i+1 .. N-3) {
            long mul2 = (A[i] * A[j]) % P;

            foreach (k; j+1 .. N-2) {
                long mul3 = (mul2 * A[k]) % P;

                foreach (l; k+1 .. N-1) {
                    long mul4 = (mul3 * A[l]) % P;

                    foreach (m; l+1 .. N) {
                        long mul5 = (mul4 * A[m]) % P;

                        if (mul5 == Q) ++res;
                    }
                }
            }
        }
    }

    res.writeln;
}