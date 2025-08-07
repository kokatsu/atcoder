import std;

void main() {
    long N, T;
    readf("%d %d\n", N, T);

    long[] P = new long[](N);
    long[] S = new long[](T);
    S[0] = 1;

    long[long] D;
    D[0] = N;
    foreach (i; 0 .. T) {
        long A, B;
        readf("%d %d\n", A, B);

        --A;

        if (i > 0) {
            S[i] = S[i - 1];
        }

        --D[P[A]];
        if (D[P[A]] == 0) {
            --S[i];
        }

        P[A] += B;
        if (P[A]!in D || D[P[A]] == 0) {
            ++S[i];
        }
        ++D[P[A]];
    }

    string res = format("%(%d\n%)", S);
    res.writeln;
}
