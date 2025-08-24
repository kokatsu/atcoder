import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    long S;
    long[] M = new long[](N);
    foreach (i; 0 .. N) {
        M[i] = min(A[i], B[i]);
        S += M[i];
    }

    long[] R = new long[](Q);
    foreach (i; 0 .. Q) {
        char c;
        long X, V;
        readf("%c %d %d\n", c, X, V);

        --X;

        if (c == 'A') {
            A[X] = V;
        }
        else {
            B[X] = V;
        }

        long T = min(A[X], B[X]);
        if (T != M[X]) {
            S += (T - M[X]);
            M[X] = T;
        }

        R[i] = S;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
