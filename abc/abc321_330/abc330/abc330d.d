import std;

void main() {
    long N;
    readf("%d\n", N);

    auto S = new string[](N);
    auto R = new long[](N), C = new long[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);

        foreach (j, c; S[i]) {
            if (c == 'o') {
                ++R[i], ++C[j];
            }
        }
    }

    long res;
    foreach (i, s; S) {
        foreach (j, c; s) {
            if (c == 'o') {
                res += (R[i] - 1) * (C[j] - 1);
            }
        }
    }

    res.writeln;
}
