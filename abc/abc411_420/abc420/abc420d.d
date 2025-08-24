import std;

struct S {
    int d, x, y, z;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    string[] A = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", A[i]);
    }

    int Sx, Sy, Gx, Gy;
    int[][][] D = new int[][][](H, W, 2);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            D[i][j][] = int.max / 2;

            if (A[i][j] == 'S') {
                Sx = i, Sy = j;
            }

            if (A[i][j] == 'G') {
                Gx = i, Gy = j;
            }
        }
    }

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    S[] heap;
    heap ~= S(0, Sx, Sy, 0);
    D[Sx][Sy][0] = 0;
    while (!heap.empty) {
        S f = heap.front;
        heap.popFront;

        foreach (i; 0 .. 4) {
            int nx = f.x + dx[i], ny = f.y + dy[i];
            if (nx < 0 || nx >= H || ny < 0 || ny >= W) {
                continue;
            }

            char a = A[nx][ny];
            if (a == '#') {
                continue;
            }

            if ((a == 'o' && f.z == 1) || (a == 'x' && f.z == 0)) {
                continue;
            }

            int nd = f.d + 1;
            int nz = a == '?' ? (f.z + 1) % 2 : f.z;
            if (nd >= D[nx][ny][nz]) {
                continue;
            }

            D[nx][ny][nz] = nd;
            heap ~= S(nd, nx, ny, nz);
        }
    }

    int res = D[Gx][Gy].minElement;
    if (res >= int.max / 2) {
        res = -1;
    }

    res.writeln;
}
