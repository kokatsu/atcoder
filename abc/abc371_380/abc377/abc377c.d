import std;

struct Coord {
    long x, y;
}

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long[] dx = [-2, -1, 1, 2, 2, 1, -1, -2];
    long[] dy = [1, 2, 2, 1, -1, -2, -2, -1];

    bool[Coord] D;
    foreach (_; 0 .. M) {
        long a, b;
        readfln("%d %d", a, b);

        D[Coord(a, b)] = true;
        foreach (u, v; zip(dx, dy)) {
            Coord c = Coord(a + u, b + v);
            if (1 <= c.x && c.x <= N && 1 <= c.y && c.y <= N) {
                D[c] = true;
            }
        }
    }

    long res = N * N - D.length;
    res.writeln;
}
