import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    int[] P = new int[](N);
    foreach (j; 0 .. M) {
        int Z;
        foreach (i; 0 .. N) {
            if (S[i][j] == '0') {
                ++Z;
            }
        }

        if (Z == 0 || Z == N) {
            P[] += 1;
            continue;
        }

        char T = Z * 2 > N ? '1' : '0';
        foreach (i; 0 .. N) {
            if (S[i][j] == T) {
                ++P[i];
            }
        }
    }

    int X = P.maxElement;
    int[] Q = iota(1, N + 1).filter!(i => P[i - 1] == X).array;

    string res = format("%(%d %)", Q);
    res.writeln;
}
