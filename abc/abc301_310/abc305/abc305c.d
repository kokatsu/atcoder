import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);
    }

    int[] dx = [-1, 0, 1, 0];
    int[] dy = [0, 1, 0, -1];

    string res;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '#') {
                continue;
            }

            int cnt;
            foreach (k; 0 .. 4) {
                int ni = i + dx[k];
                int nj = j + dy[k];

                if (ni < 0 || ni >= H || nj < 0 || nj >= W) {
                    continue;
                }

                if (S[ni][nj] == '#') {
                    ++cnt;
                }
            }

            if (cnt >= 2) {
                res = format("%d %d", i + 1, j + 1);
            }
        }
    }

    res.writeln;
}
