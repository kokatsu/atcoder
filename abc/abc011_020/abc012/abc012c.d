import std;

enum int S = 2025, M = 10;

void main() {
    int N;
    readf("%d\n", N);

    int diff = S - N;
    foreach (i; 1 .. M) {
        int d = diff / i, m = diff % i;

        if (m == 0 && d < M) {
            writefln("%d x %d", i, d);
        }
    }
}
