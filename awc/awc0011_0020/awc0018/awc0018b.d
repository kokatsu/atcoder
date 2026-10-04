import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] C = readln.chomp.split.to!(int[]);

    long res;
    foreach (_; 0 .. N) {
        int K;
        readfln("%d", K);

        int[] P = readln.chomp.split.to!(int[]);

        P.sort;

        foreach (g; P.group) {
            if (g[1] <= C[g[0] - 1]) {
                res += g[1];
            }
        }
    }

    res.writeln;
}
