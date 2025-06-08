import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);
    }

    auto seen = new bool[][](H, W);

    int res;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (S[i][j] == '.' || seen[i][j]) {
                continue;
            }

            seen[i][j] = true;
            ++res;

            Tuple!(int, int)[] queue;
            queue ~= Tuple!(int, int)(i, j);
            while (!queue.empty) {
                auto f = queue.front;
                queue.popFront;
                int x = f[0], y = f[1];

                foreach (dx; -1 .. 2) {
                    foreach (dy; -1 .. 2) {
                        if (dx == 0 && dy == 0) {
                            continue;
                        }

                        int nx = x + dx, ny = y + dy;
                        if (nx < 0 || nx >= H || ny < 0 || ny >= W || seen[nx][ny] || S[nx][ny] == '.') {
                            continue;
                        }

                        seen[nx][ny] = true;
                        queue ~= Tuple!(int, int)(nx, ny);
                    }
                }
            }
        }
    }

    res.writeln;
}
