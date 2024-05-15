import std;

void main() {
    long N, K, M, R;
    readf("%d %d %d %d\n", N, K, M, R);

    auto S = new long[](N-1);
    foreach (i; 0 .. N-1) readf("%d\n", S[i]);

    S.sort!"a > b";

    long T = S[0..K-1].sum, D = R * K - T;

    long res;
    if (N == K || D > S[K-1]) {
        if (D <= M) res = max(0, D);
        else res = -1;
    }

    res.writeln;
}