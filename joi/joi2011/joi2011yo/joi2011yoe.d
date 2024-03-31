import std;

struct Section {
    int x, y, dist;
}

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    auto S = new string[](H);
    auto T = new Section[](N+1);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);

        foreach (j, s; S[i]) {
            if (s == '.' || s == 'X') continue;

            T[s=='S'?0:s-'0'] = Section(i, j.to!int, 0);
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    int bfs(int a) {
        auto D = new int[][](H, W);
        foreach (i; 0 .. H) D[i][] = int.max;
        D[T[a].x][T[a].y] = 0;

        Section[] heap = [T[a]];
        while (!heap.empty) {
            auto f = heap.front;
            heap.popFront;

            if (f.x == T[a+1].x && f.y == T[a+1].y) {
                return f.dist;
            }

            foreach (i; 0 .. 4) {
                int x = f.x + dx[i], y = f.y + dy[i];
                if (x < 0 || H <= x || y < 0 || W <= y || S[x][y] == 'X' || f.dist + 1 >= D[x][y]) {
                    continue;
                }

                heap ~= Section(x, y, f.dist+1);
                D[x][y] = f.dist + 1;
            }
        }

        return 0;
    }

    int res;
    foreach (i; 0 .. N) res += bfs(i);

    res.writeln;
}