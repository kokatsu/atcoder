import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int S, X;
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        if (A < N) {
            int D = N - A;
            S += D, X = max(X, D);
        }
    }

    int res = S - X;
    res.writeln;
}