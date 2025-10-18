import std;

void main() {
    int N, K;
    string S;
    readf("%d %d\n%s\n", N, K, S);

    int M;
    int[string] D;
    foreach (i; 0 .. N - K + 1) {
        M = max(M, ++D[S[i .. i + K]]);
    }

    string[] L;
    foreach (key, val; D) {
        if (val == M) {
            L ~= key;
        }
    }

    L.sort;

    string res = format("%d\n%-(%s %)", M, L);
    res.writeln;
}
