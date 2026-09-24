import std;

enum int L = 10 ^^ 5 + 1;

void main() {
    int N;
    readfln("%d", N);

    int[] P = new int[](N), Q = new int[](N), S = new int[](L);
    int[int][] D = new int[int][](L);
    foreach (i; 0 .. N) {
        readfln("%d %d", P[i], Q[i]);

        ++S[P[i]];
        ++D[P[i]][Q[i]];
    }

    long res;
    foreach (i; 0 .. N) {
        res += S[P[i]] - D[P[i]][Q[i]];
        --S[P[i]], --D[P[i]][Q[i]];
    }

    res.writeln;
}
