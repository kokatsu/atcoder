import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    string[] S = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", S[i]);

    int[] x, y;
    foreach (i; 0 .. N - 8) {
        foreach (j; 0 .. M - 8) {
            int b, w;
            foreach (k; 0 .. 3) {
                foreach (l; 0 .. 3) {
                    if (S[i + k][j + l] == '#')
                        ++b;
                    if (S[i + k + 6][j + l + 6] == '#')
                        ++b;

                    if (k == 0 && S[i + k + 5][j + l + 6] == '.')
                        ++w;
                    if (k == 2 && S[i + k + 1][j + k] == '.')
                        ++w;
                    if (l == 0 && S[i + k + 6][j + l + 5] == '.')
                        ++w;
                    if (l == 2 && S[i + k][j + l + 1] == '.')
                        ++w;
                }
            }

            if (S[i + 3][j + 3] == '.')
                ++w;
            if (S[i + 5][j + 5] == '.')
                ++w;

            if (b == 18 && w == 14) {
                x ~= i + 1, y ~= j + 1;
            }
        }
    }

    foreach (u, v; zip(x, y)) {
        writeln(u, " ", v);
    }
}
