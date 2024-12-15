import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int[] x, y;
    auto s = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", s[i]);

        foreach (j; 0 .. H) {
            if (s[i][j] == '#') {
                x ~= i, y ~= j;
            }
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    bool isOK = true;
    foreach (u, v; zip(x, y)) {
        bool exist;
        foreach (i; 0 .. 4) {
            int nx = u + dx[i], ny = v + dy[i];
            if (nx < 0 || H <= nx || ny < 0 || W <= ny)
                continue;

            exist |= (s[nx][ny] == '#');
        }

        if (exist)
            continue;

        isOK = false;
    }

    writeln(isOK ? "Yes" : "No");
}
