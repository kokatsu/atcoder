import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = new string[](N), T = new string[](M);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    foreach (i; 0 .. M) {
        readf("%s\n", T[i]);
    }

    foreach (i; 0 .. N - M + 1) {
        foreach (j; 0 .. N - M + 1) {
            bool isOk = true;
            foreach (k; 0 .. M) {
                foreach (l; 0 .. M) {
                    isOk &= S[k + i][l + j] == T[k][l];
                }
            }

            if (isOk) {
                string res = format("%d %d", i + 1, j + 1);
                res.writeln;
            }
        }
    }
}
