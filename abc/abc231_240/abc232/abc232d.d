import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto C = new string[](H);
    foreach (i; 0 .. H) {
        C[i] = readln.chomp;
    }

    auto seen = new bool[][](H, W);

    int res;
    void dfs(int x, int y, int cnt) {
        seen[x][y] = true;

        if (x + 1 < H && C[x + 1][y] == '.' && !seen[x + 1][y]) {
            dfs(x + 1, y, cnt + 1);
        }
        if (y + 1 < W && C[x][y + 1] == '.' && !seen[x][y + 1]) {
            dfs(x, y + 1, cnt + 1);
        }

        res = max(res, cnt);
    }

    dfs(0, 0, 1);

    res.writeln;
}
