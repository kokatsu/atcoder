import std;

struct Coord {
    long x, y;
}

void main() {
    long H, W, D;
    readf("%d %d %d\n", H, W, D);

    long len = H * W;
    auto C = new Coord[](len);
    foreach (i; 0 .. H) {
        auto A = readln.chomp.split.to!(long[]);
        A[] -= 1;

        foreach (j, a; A) {
            C[a] = Coord(i, j);
        }
    }

    auto MP = new long[](len);
    foreach (i; 0 .. len) {
        if (i >= D) {
            MP[i] += MP[i-D];

            auto s = C[i], t = C[i-D];
            MP[i] += abs(s.x - t.x) + abs(s.y - t.y);
        }
    }

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long L, R;
        readf("%d %d\n", L, R);
        --L, --R;

        long res = MP[R] - MP[L];
        res.writeln;
    }
}