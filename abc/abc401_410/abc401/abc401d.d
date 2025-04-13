import std;

void main() {
    int N, K;
    char[] S;
    readf("%d %d\n%s\n", N, K, S);

    foreach (i; 0 .. N) {
        if (S[i] == 'o') {
            --K;

            if (i > 0) {
                S[i - 1] = '.';
            }

            if (i < N - 1) {
                S[i + 1] = '.';
            }
        }
    }

    char[] res = S.dup;
    if (K == 0) {
        res = S.dup.map!(c => c == 'o' ? 'o' : '.').array;
    }
    else {
        int M, C;
        auto T = S.dup;
        foreach (i; 0 .. N + 1) {
            if (i < N && S[i] == '?') {
                ++M;
            }
            else {
                C += (M + 1) / 2;
                if (M % 2 == 1) {
                    foreach (j; 0 .. M) {
                        if (j % 2 == 1) {
                            T[i + j - M] = '.';
                        }
                        else {
                            T[i + j - M] = 'o';
                        }
                    }
                }
                M = 0;
            }
        }

        if (C == K) {
            res = T;
        }
    }

    res.writeln;
}
