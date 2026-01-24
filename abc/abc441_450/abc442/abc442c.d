import std;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long[] C = new long[](N);
    C[] = N - 1;
    foreach (_; 0 .. M) {
        long A, B;
        readfln("%d %d", A, B);

        --A, --B;
        --C[A], --C[B];
    }

    long[] R = new long[](N);
    foreach (i, ref r; R) {
        r = C[i] * (C[i] - 1) * (C[i] - 2) / 6;
    }

    string res = format("%(%d %)", R);
    res.writeln;
}
