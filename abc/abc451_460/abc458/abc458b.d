import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    int[][] G = new int[][](H, W);
    int[] dx = [0, 1, 0, -1], dy = [1, 0, -1, 0];
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            foreach (k; 0 .. 4) {
                int x = i + dx[k], y = j + dy[k];
                if (0 <= x && x < H && 0 <= y && y < W) {
                    G[i][j] += 1;
                }
            }
        }
    }

    string res = format("%(%(%d %)\n%)", G);
    res.writeln;
}
