import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int L = 100;
    auto grid = new dchar[][](L, L);

    dchar w = '.', b = '#';

    if (A > B) {
        swap(A, B);
        swap(w, b);
    }

    --A;
    foreach (i; 0 .. L) grid[i][] = w;

    int x, y;
    while (A > 0) {
        foreach (i; 0 .. 9) {
            int nx = x + i / 3, ny = y + i % 3;
            grid[nx][ny] = b;
        }

        grid[x+1][y+1] = w;

        --A, --B;

        x += 4;
        if (x >= L) x = 0, y += 4;
    }

    while (B > 0) {
        foreach (i; 0 .. 9) {
            int nx = x + i / 3, ny = y + i % 3;
            grid[nx][ny] = b;
        }

        --B;

        x += 4;
        if (x >= L) x = 0, y += 4;
    }

    writeln(L, " ", L);
    foreach (g; grid) g.writeln;
}