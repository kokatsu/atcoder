import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    bool[string] D;
    foreach (i; 0 .. N - M + 1) {
        foreach (j; 0 .. N - M + 1) {
            string K;
            foreach (k; 0 .. M) {
                K ~= S[i + k][j .. j + M];
            }

            D[K] = true;
        }
    }

    size_t res = D.length;
    res.writeln;
}
