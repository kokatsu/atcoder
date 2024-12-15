import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = new int[](N - 1), S = new int[](N - 1), F = new int[](N - 1);
    foreach (i; 0 .. N - 1)
        readf("%d %d %d\n", C[i], S[i], F[i]);

    auto res = new int[](N);
    foreach (i; 0 .. N - 1) {
        foreach (j; i .. N - 1) {
            if (res[i] <= S[j]) {
                res[i] = S[j];
            }
            else {
                int cnt = (res[i] - S[j] + F[j] - 1) / F[j];
                res[i] = S[j] + F[j] * cnt;
            }

            res[i] += C[j];
        }
    }

    foreach (r; res)
        r.writeln;
}
