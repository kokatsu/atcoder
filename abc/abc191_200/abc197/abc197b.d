import std;

void main() {
    int H, W, X, Y;
    readf("%d %d %d %d\n", H, W, X, Y);

    auto S = new string[](H);
    foreach (i; 0 .. H) S[i] = readln.chomp;

    --X, --Y;

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];
    int res = 1;

    void f(int x, int y, int d) {
        int nx = x + dx[d], ny = y + dy[d];
        if (nx < 0 || H <= nx || ny < 0 || W <= ny) return;
        if (S[nx][ny] == '#') return;

        ++res;
        f(nx, ny, d);
    }

    foreach (i; 0 .. 4) f(X, Y, i);

    res.writeln;
}