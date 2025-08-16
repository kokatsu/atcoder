import std;

void main() {
    int N, M;
    string S, T;
    readf("%d %d\n%s\n%s\n", N, M, S, T);

    int[] F = new int[](N + 1);
    foreach (_; 0 .. M) {
        int L, R;
        readf("%d %d\n", L, R);

        ++F[L - 1], --F[R];
    }

    foreach (i; 0 .. N) {
        F[i + 1] += F[i];
    }

    string res = N.iota
        .map!(i => F[i] % 2 == 1 ? T[i] : S[i])
        .to!string;
    res.writeln;
}
