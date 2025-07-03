import std;

void main() {
    int N, S, M, L;
    readf("%d %d %d %d\n", N, S, M, L);

    int res = int.max;
    foreach (i; 0 .. (N + 5) / 6 + 1) {
        int X = N - i * 6;
        foreach (j; 0 .. (X + 7) / 8 + 1) {
            int Y = X - j * 8;
            int k = (Y + 11) / 12;

            res = min(res, i * S + j * M + k * L);
        }
    }

    res.writeln;
}
