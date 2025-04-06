import std;

enum string snuke = "snuke";
enum ulong L = snuke.length;

struct Coord {
    int index, x, y;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);
    }

    int[] dx = [-1, 0, 1, 0];
    int[] dy = [0, 1, 0, -1];

    auto visited = new bool[][](H, W);
    Coord[] queue;
    if (S[0][0] == snuke[0]) {
        queue ~= Coord(0, 0, 0);
    }
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;

        if (visited[f.x][f.y]) {
            continue;
        }
        visited[f.x][f.y] = true;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i];
            int ny = f.y + dy[i];

            if (nx < 0 || nx >= H || ny < 0 || ny >= W) {
                continue;
            }

            if (S[nx][ny] == snuke[(f.index + 1) % L]) {
                queue ~= Coord((f.index + 1) % L, nx, ny);
            }
        }
    }

    string res = visited[H - 1][W - 1] ? "Yes" : "No";
    res.writeln;
}
