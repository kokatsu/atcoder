import std;

void main() {
    int N, M, T;
    readf("%d %d %d\n", N, M, T);

    int R = N, P;
    bool isOK = true;
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        R -= (A - P);
        isOK &= (R > 0);

        R = min(N, R + B - A);
        P = B;
    }

    R -= (T - P);
    isOK &= (R > 0);

    writeln(isOK ? "Yes" : "No");
}
