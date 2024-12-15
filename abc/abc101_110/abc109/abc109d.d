import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto a = new int[][](H);
    foreach (i; 0 .. H)
        a[i] = readln.chomp.split.to!(int[]);

    int lim = H * W, r, c, d = 1;
    int[] y, x, v, u;
    foreach (i; 1 .. lim) {
        int nr = r, nc = c;
        if (nc <= 0 && d == -1)
            ++nr, d = 1;
        else if (nc >= W - 1 && d == 1)
            ++nr, d = -1;
        else
            nc += d;

        if (a[r][c] % 2 == 1) {
            y ~= r + 1, x ~= c + 1, v ~= nr + 1, u ~= nc + 1;
            --a[r][c], ++a[nr][nc];
        }

        r = nr, c = nc;
    }

    auto N = y.length;
    N.writeln;
    foreach (i; 0 .. N)
        writeln(y[i], " ", x[i], " ", v[i], " ", u[i]);
}
