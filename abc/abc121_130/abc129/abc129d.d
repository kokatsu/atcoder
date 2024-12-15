import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H)
        S[i] = readln.chomp;

    auto U = new int[][](H, W);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '#')
                continue;

            if (i == 0)
                ++U[i][j];
            else
                U[i][j] = U[i - 1][j] + 1;
        }
    }

    auto D = new int[][](H, W);
    foreach_reverse (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '#')
                continue;

            if (i == H - 1)
                ++D[i][j];
            else
                D[i][j] = D[i + 1][j] + 1;
        }
    }

    auto L = new int[][](H, W);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '#')
                continue;

            if (j == 0)
                ++L[i][j];
            else
                L[i][j] = L[i][j - 1] + 1;
        }
    }

    auto R = new int[][](H, W);
    foreach (i; 0 .. H) {
        foreach_reverse (j; 0 .. W) {
            if (S[i][j] == '#')
                continue;

            if (j == W - 1)
                ++R[i][j];
            else
                R[i][j] = R[i][j + 1] + 1;
        }
    }

    int res;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '#')
                continue;

            int num = U[i][j] + D[i][j] + L[i][j] + R[i][j] - 3;
            res = max(res, num);
        }
    }

    res.writeln;
}
