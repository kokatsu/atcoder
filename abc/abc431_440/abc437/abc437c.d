import std;

void main() {
    int T;
    readf("%d\n", T);

    long[] R = new long[](T);
    foreach (i; 0 .. T) {
        int N;
        readf("%d\n", N);

        long S;
        long[] A;
        foreach (_; 0 .. N) {
            long W, P;
            readf("%d %d\n", W, P);

            S += P;
            A ~= W + P;
        }

        A.sort;

        foreach (a; A) {
            if (a > S) {
                break;
            }

            S -= a, ++R[i];
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
