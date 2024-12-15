import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int A = 1, B = N;
    foreach (_; 0 .. M) {
        int L, R;
        readf("%d %d\n", L, R);

        A = max(A, L), B = min(B, R);
    }

    int res = max(0, B - A + 1);
    res.writeln;
}
