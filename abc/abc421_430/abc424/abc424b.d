import std;

void main() {
    int N, M, K;
    readf("%d %d %d\n", N, M, K);

    int[] S, C = new int[](N + 1);
    foreach (_; 0 .. K) {
        int A, B;
        readf("%d %d\n", A, B);

        C[A] += 1 << (B - 1);

        if (C[A] >= (1 << M) - 1) {
            S ~= A;
        }
    }

    if (S.empty) {
        return;
    }

    string res = format("%(%d %)", S);
    res.writeln;
}
