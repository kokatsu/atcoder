import std;

void main() {
    int N, D, K;
    readf("%d %d %d\n", N, D, K);

    auto L = new int[](D), R = new int[](D);
    foreach (i; 0 .. D) {
        readf("%d %d\n", L[i], R[i]);
    }

    auto S = new int[](K), T = new int[](K);
    foreach (i; 0 .. K) {
        readf("%d %d\n", S[i], T[i]);
    }

    auto res = new int[](K);
    foreach (i; 0 .. D) {
        foreach (j; 0 .. K) {
            if (S[j] == T[j]) {
                continue;
            }

            if (S[j] < L[i] || R[i] < S[j]) {
                continue;
            }

            S[j] = S[j] < T[j] ? min(R[i], T[j]) : max(L[i], T[j]);

            if (S[j] == T[j]) {
                res[j] = i + 1;
            }
        }
    }

    writefln("%(%d\n%)", res);
}