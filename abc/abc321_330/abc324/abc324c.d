import std;

void main() {
    int N;
    char[] T;
    readf("%d %s\n", N, T);

    char[] R = T.dup;
    R.reverse;

    size_t L = T.length;

    int[] A;
    foreach (i; 1 .. N + 1) {
        char[] S;
        readf("%s\n", S);

        size_t M = S.length;

        size_t F = commonPrefix(T, S).length;

        S.reverse;

        size_t B = commonPrefix(R, S).length;

        size_t W = F + B;
        if (
            ((F == M) && (M == L))
                || ((W >= M) && (M == L - 1))
                || ((W >= M - 1) && (M == L + 1))
                || ((W == M - 1) && M == L)) {
            A ~= i;
        }
    }

    string res = format("%d\n%(%d %)", A.length, A);
    res.writeln;
}
