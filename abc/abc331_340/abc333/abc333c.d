import std;

enum int L = 12;

void main() {
    int N;
    readf("%d\n", N);

    auto R = new long[](L);
    R[0] = 1;
    foreach (i; 1 .. L) {
        R[i] = R[i - 1] + 10L ^^ i;
    }

    long[] T;
    foreach (i; 0 .. L) {
        foreach (j; i .. L) {
            foreach (k; j .. L) {
                T ~= R[i] + R[j] + R[k];
            }
        }
    }

    T.sort;

    long res = T[N - 1];
    res.writeln;
}
