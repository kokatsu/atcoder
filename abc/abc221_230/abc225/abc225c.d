import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto B = new long[][](N);
    foreach (i; 0 .. N) {
        B[i] = readln.chomp.split.to!(long[]);
    }

    bool isOK = true;
    if (M > 1) {
        foreach (i; 1 .. M) {
            if (B[0][i - 1] + 1 != B[0][i]) {
                isOK = false;
            }
        }
        if (((B[0][0] - 1) / 7) != ((B[0][M - 1] - 1) / 7)) {
            isOK = false;
        }
    }

    if (N > 1) {
        foreach (i; 1 .. N) {
            foreach (j; 0 .. M) {
                if (B[i - 1][j] + 7 != B[i][j]) {
                    isOK = false;
                }

                if (M == 1) {
                    continue;
                }

                if (j > 0 && B[i][j - 1] + 1 != B[i][j]) {
                    isOK = false;
                }
            }

            if (((B[i][0] - 1) / 7) != ((B[i][M - 1] - 1) / 7)) {
                isOK = false;
            }
        }
    }

    if (isOK) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
