import std;

void main() {
    int N;
    readf("%d\n", N);

    int res, u, v;
    foreach (i; 0 .. N) {
        int x, y;
        readf("%d %d\n", x, y);

        if (i > 0) {
            res += abs(u - x) + abs(v - y);
        }

        u = x, v = y;
    }

    res.writeln;
}
