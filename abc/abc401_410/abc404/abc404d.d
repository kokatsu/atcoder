import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto C = readln.chomp.split.to!(long[]);

    auto A = new bool[][](N, M);
    foreach (i; 0 .. M) {
        auto line = readln.chomp.split.to!(long[]);

        foreach (l; line[1 .. $]) {
            A[l - 1][i] = true;
        }
    }

    auto L = 1 << N;
    auto S = new long[](L);
    auto V = new long[][](L, M);
    foreach (i; 0 .. L) {
        foreach (j; 0 .. N) {
            if (i & (1 << j)) {
                S[i] += C[j];

                foreach (k; 0 .. M) {
                    if (A[j][k]) {
                        ++V[i][k];
                    }
                }
            }
        }
    }

    long res = long.max;
    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            if (M.iota.all!(k => V[i][k] + V[j][k] >= 2)) {
                res = min(res, S[i] + S[j]);
            }
        }
    }

    res.writeln;
}
