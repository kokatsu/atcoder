import std;
import core.bitop;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] B = new int[](N);
    foreach (i; 0 .. N) {
        string S;
        readf("%s\n", S);

        B[i] = S.translate(['o': '1', 'x': '0']).to!int(2);
    }

    int res = N + 1;
    foreach (i; 0 .. (1 << N)) {
        int X;

        foreach (j; 0 .. N) {
            if ((i >> j) & 1) {
                X |= B[j];
            }
        }

        if (X == (1 << M) - 1) {
            res = min(res, popcnt(i));
        }
    }

    res.writeln;
}
