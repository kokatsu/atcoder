import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto A = new long[](M), B = new long[](M), C = new long[](M);
    foreach (i; 0 .. M) readf("%d %d %d\n", A[i], B[i], C[i]);

    auto E = readln.chomp.split.to!(long[]);

    A[] -= 1, B[] -= 1;
    E[] -= 1;

    auto P = new long[](N);
    P[1..$]= long.max;

    foreach (e; E) {
        if (P[A[e]] == long.max) continue;

        P[B[e]] = min(P[B[e]], P[A[e]]+C[e]);
    }

    long res = (P[N-1] == long.max ? -1 : P[N-1]);
    res.writeln;
}