import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto s = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", s[i]);

    int[] dx = [0, -1, -1, 0, 1, 1, 1, 0, -1];
    int[] dy = [0, 0, 1, 1, 1, 0, -1, -1, -1];

    auto res = new int[][](N, M);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. M) {
            foreach (k; 0 .. 9) {
                int x = i + dx[k], y = j + dy[k];
                if (x < 0 || x >= N || y < 0 || y >= M || s[x][y] == '.') {
                    continue;
                }
                ++res[i][j];
            }
        }
    }

    writefln("%(%(%d%)\n%)", res);
}
