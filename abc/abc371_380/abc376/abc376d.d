import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[][] G = new int[][](N);
    foreach (_; 0 .. M) {
        int a, b;
        readf("%d %d\n", a, b);

        G[a - 1] ~= b - 1;
    }

    int[] D = new int[](N);
    D[1 .. N] = int.max;

    int[] Q = [0];
    int res = -1;
    while (!Q.empty && res == -1) {
        int F = Q.front;
        Q.popFront;

        foreach (g; G[F]) {
            if (g == 0) {
                res = D[F] + 1;
                break;
            }

            if (D[g] == int.max) {
                D[g] = D[F] + 1;
                Q ~= g;
            }
        }
    }

    res.writeln;
}
