import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M = 1;
    auto C = new bool[](N);
    auto L = new int[](N);
    while (!C[M - 1]) {
        C[M - 1] = true;
        L ~= M;
        M = A[M - 1];
    }

    auto F = L.countUntil(M);

    int[] B = L[F .. $];

    string res = format("%d\n%(%d %)", B.length, B);
    res.writeln;
}
