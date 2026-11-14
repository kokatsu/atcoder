import std;

enum int L = 2 * 10 ^^ 5 + 1;

void main() {
    int N, M, K;
    readfln("%d %d %d", N, M, K);

    int[] V = new int[](N);
    int[][] T = new int[][](N);
    foreach (i; 0 .. N) {
        int[] Q = readln.chomp.split.to!(int[]);

        V[i] = Q[0];
        if (Q[1] > 0) {
            T[i] = Q[2 .. $];
        }
    }

    int[] X = N.iota.array;
    zip(V, X).sort!((a, b) => a[0] == b[0] ? a[1] < b[1] : a[0] > b[0]);

    int[] C = new int[](L);
    foreach (i; 0 .. K) {
        foreach (t; T[X[i]]) {
            ++C[t];
        }
    }

    size_t res = C.count!(c => c == K);
    res.writeln;
}
