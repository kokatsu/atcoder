import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto c = new dchar[][](H);
    foreach (i; 0 .. H) c[i] = readln.chomp.to!(dchar[]);

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (c[i][j] != '.') continue;

            int num;
            foreach (k; 0 .. 4) {
                int x = i + dx[k], y = j + dy[k];

                if (x < 0 || H <= x || y < 0 || W <= y) continue;
                if (c[x][y] == '.') continue;

                num |= 1 << (c[x][y] - '1');
            }

            foreach (k; 0 .. 5) {
                if ((num >> k) & 1) continue;

                c[i][j] = to!dchar(k+'1');
                break;
            }
        }
    }

    foreach (x; c) x.writeln;
}