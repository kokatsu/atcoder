import std;

void main() {
    int H, W, N, h, w;
    readf("%d %d %d %d %d\n", H, W, N, h, w);

    auto A = new int[][](H);
    foreach (i; 0 .. H)
        A[i] = readln.chomp.split.to!(int[]);

    auto C = new int[][][](H + 1, W + 1, N + 1);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            ++C[i + 1][j + 1][A[i][j]];
        }
    }

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W + 1) {
            C[i + 1][j][] += C[i][j][];
        }
    }

    foreach (i; 0 .. H + 1) {
        foreach (j; 0 .. W) {
            C[i][j + 1][] += C[i][j][];
        }
    }

    auto res = new int[][](H - h + 1, W - w + 1);
    foreach (i; 0 .. H - h + 1) {
        foreach (j; 0 .. W - w + 1) {
            int[] B = C[H][W][];

            int num;
            foreach (k; 1 .. N + 1) {
                int T = C[i + h][j + w][k] - C[i + h][j][k] - C[i][j + w][k] + C[i][j][k];
                if (B[k] > T)
                    ++num;
            }

            res[i][j] = num;
        }
    }

    foreach (r; res)
        writefln("%(%s %)", r);
}
