import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    string[] S = new string[](H);
    foreach (i; 0 .. H) {
        readfln("%s", S[i]);
    }

    bool ok = true;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] != '#') {
                continue;
            }

            int cnt;
            if (i > 0 && S[i - 1][j] == '#') {
                ++cnt;
            }
            if (i + 1 < H && S[i + 1][j] == '#') {
                ++cnt;
            }
            if (j > 0 && S[i][j - 1] == '#') {
                ++cnt;
            }
            if (j + 1 < W && S[i][j + 1] == '#') {
                ++cnt;
            }

            ok &= (cnt == 2 || cnt == 4);
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
