import std;

void main() {
    int N = 10;

    auto S = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", S[i]);

    bool isX, isY;
    int A, B, C, D;
    A = C = N;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (S[i][j] == '#') {
                A = min(A, i + 1), B = max(B, i + 1);
                C = min(C, j + 1), D = max(D, j + 1);
            }
        }
    }

    writeln(A, " ", B);
    writeln(C, " ", D);
}
