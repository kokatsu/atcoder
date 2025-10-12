import std;

void main() {
    int a, b, c, d, e, f, g, h, i, j, k, l;
    readf("%d %d %d %d %d %d\n%d %d %d %d %d %d\n", a, b, c, d, e, f, g, h, i, j, k, l);

    bool z(int u, int v, int x, int y) {
        return v > x && y > u;
    }

    string res = "No";
    if (z(a, d, g, j) && z(b, e, h, k) && z(c, f, i, l)) {
        res = "Yes";
    }

    res.writeln;
}
