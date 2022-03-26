import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);
    auto C = readln.chomp.split.to!(long[]);

    auto B = new long[](M+1);
    foreach_reverse (i; 0 .. M+1) {
        B[i] = C[i+N] / A[N];

        foreach (j; 0 .. N+1) {
            C[i+j] -= B[i] * A[j];
        }
    }

    writefln("%(%s %)", B);
}