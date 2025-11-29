import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] C = new int[](M);
    real[] S = new real[](M);
    S[] = 0.0;
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        ++C[A - 1];
        S[A - 1] += B.to!real;
    }

    string res = format("%(%.20f\n%)", M.iota.map!(i => S[i] / C[i]));
    res.writeln;
}
