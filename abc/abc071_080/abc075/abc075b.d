import std;

enum int[] dx = [-1, -1, 0, 1, 1, 1, 0, -1];
enum int[] dy = [0, 1, 1, 1, 0, -1, -1, -1];

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto res = new dchar[][](H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j, s; S[i]) {
            res[i][j] = (s == '#' ? '#' : '0');
        }
    }

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (res[i][j] != '#') continue;

            foreach (u, v; zip(dx, dy)) {
                int x = i + u, y = j + v;
                if (x < 0 || H <= x || y < 0 || W <= y) continue;
                if (res[x][y] == '#') continue;
                ++res[x][y];
            }
        }
    }

    foreach (r; res) r.writeln;
}