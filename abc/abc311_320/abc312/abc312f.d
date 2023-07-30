import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto S = new long[][](3);
    foreach (i; 0 .. N) {
        long T, X;
        readf("%d %d\n", T, X);

        S[T] ~= X;
    }

    auto C = new long[](3);
    foreach (i; 0 .. 3) {
        S[i].sort!"a > b";
        C[i] = S[i].length.to!long;
    }

    long p1, p2, openers;
    auto X = new long[](N+1), Y = new long[](N+1);
    foreach (i; 0 .. N) {
        if (i < C[0]) X[i+1] = S[0][i];
        X[i+1] += X[i];

        if (openers == 0) {
            if (p2 < C[2]) {
                openers += S[2][p2++];
            }
        }
        else if (p1 < C[1]) {
            --openers;
            Y[i+1] = S[1][p1++];
        }
        Y[i+1] += Y[i];
    }

    long res;
    foreach (i; 0 .. M+1) res = max(res, X[i]+Y[M-i]);

    res.writeln;
}