import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    long[] P = new long[](N), M = new long[](N);
    long[long] D;
    foreach (i; 0 .. N) {
        P[i] = i + 1 + A[i];
        M[i] = i + 1 - A[i];

        if (M[i]!in D) {
            D[M[i]] = 0;
        }

        ++D[M[i]];
    }

    long res;
    foreach (i; 0 .. N) {
        --D[M[i]];

        if (P[i] in D) {
            res += D[P[i]];
        }
    }

    res.writeln;
}
