import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto C = new dchar[][](H);
    foreach (i; 0 .. H)
        C[i] = readln.chomp.to!(dchar[]);

    auto res = new int[](min(H, W));

    int f(int x, int y) {
        if (x < H && y < W && C[x][y] == '#') {
            return f(x + 1, y + 1) + 1;
        }
        return 0;
    }

    foreach (i; 1 .. H - 1) {
        foreach (j; 1 .. W - 1) {
            if (C[i][j] == '.')
                continue;

            if (C[i - 1][j - 1] == '#' && C[i - 1][j + 1] == '#'
                    && C[i + 1][j - 1] == '#' && C[i + 1][j + 1] == '#') {
                ++res[f(i, j) - 2];
            }
        }
    }

    writefln("%(%s %)", res);
}
