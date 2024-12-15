import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", A[i]);

    auto B = new string[](M);
    foreach (i; 0 .. M)
        readf("%s\n", B[i]);

    bool isOK;
    foreach (i; 0 .. N - M + 1) {
        foreach (j; 0 .. N - M + 1) {
            bool check = true;

            foreach (k; 0 .. M) {
                check &= (A[j + k][i .. i + M] == B[k]);
            }

            isOK |= check;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
