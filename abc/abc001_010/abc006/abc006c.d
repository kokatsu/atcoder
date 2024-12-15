import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    foreach (j; 0 .. N + 1) {
        int a = N - j, b = M - j * 3;
        if (b < 0)
            break;
        if (b % 2 == 1)
            continue;

        b /= 2;

        int i = a * 2 - b, k = b - a;
        if (i >= 0 && k >= 0) {
            writefln("%d %d %d", i, j, k);
            return;
        }
    }

    writefln("%d %d %d", -1, -1, -1);
}
