import std;

void main() {
    int N;
    readfln("%d", N);

    long[] A = readln.chomp.split.to!(long[]);

    auto T = A.partition3(0);
    long[] M = T[0], P = T[2];
    M.sort!"a > b", P.sort;
    size_t X = M.length, Y = P.length;

    size_t x, y;
    long res, Q;
    foreach (_; 0 .. N) {
        long u = x < X ? M[x] : long.min / 4;
        long v = y < Y ? P[y] : long.min / 4;

        long dx = abs(Q - u), dy = abs(Q - v);
        if (dx <= dy) {
            res += dx;
            Q = u;
            ++x;
        }
        else {
            res += dy;
            Q = v;
            ++y;
        }
    }

    res.writeln;
}
