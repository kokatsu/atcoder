import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto N = S.length, M = T.length;
    auto F = new bool[](N + 1), B = new bool[](N + 1);
    F[0] = B[N] = true;
    foreach (i; 0 .. M) {
        F[i + 1] = F[i] && (S[i] == '?' || T[i] == '?' || S[i] == T[i]);
        B[N - i - 1] = B[N - i] && (S[N - i - 1] == '?' || T[M - i - 1] == '?'
                || S[N - i - 1] == T[M - i - 1]);
    }

    auto res = iota(M + 1).map!(i => F[i] && B[N - M + i] ? "Yes" : "No");
    writefln("%-(%s\n%)", res);
}
