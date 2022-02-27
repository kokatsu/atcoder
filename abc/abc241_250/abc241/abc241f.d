import std;

struct S {
    long x, y, c;
}

struct Coord {
    long x, y;
}

void main() {
    long H, W, N;
    readf("%d %d %d\n", H, W, N);

    long sx, sy;
    readf("%d %d\n", sx, sy);

    long gx, gy;
    readf("%d %d\n", gx, gy);

    RedBlackTree!(long, "a < b")[long] A, B;
    foreach (_; 0 .. N) {
        long X, Y;
        readf("%d %d\n", X, Y);

        if (!(Y in A)) A[Y] = [X].redBlackTree;
        else A[Y].insert(X);

        if (!(X in B)) B[X] = [Y].redBlackTree;
        else B[X].insert(Y);
    }

    long res = -1;

    S[] heap;
    heap ~= S(sx, sy, 0);

    bool[Coord] seen;
    seen[Coord(sx, sy)] = true;

    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        if (f.x == gx && f.y == gy) {
            res = f.c;
            break;
        }

        if (f.y in A) {
            auto lb = A[f.y].lowerBound(f.x);
            if (!lb.empty) {
                auto x = lb.back + 1;
                if (!(Coord(x, f.y) in seen)) {
                    heap ~= S(x, f.y, f.c+1);
                    seen[Coord(x, f.y)] = true;
                }
            }

            auto ub = A[f.y].upperBound(f.x);
            if (!ub.empty) {
                auto x = ub.front - 1;
                if (!(Coord(x, f.y) in seen)) {
                    heap ~= S(x, f.y, f.c+1);
                    seen[Coord(x, f.y)] = true;
                }
            }
        }

        if (f.x in B) {
            auto lb = B[f.x].lowerBound(f.y);
            if (!lb.empty) {
                auto y = lb.back + 1;
                if (!(Coord(f.x, y) in seen)) {
                    heap ~= S(f.x, y, f.c+1);
                    seen[Coord(f.x, y)] = true;
                }
            }

            auto ub = B[f.x].upperBound(f.y);
            if (!ub.empty) {
                auto y = ub.front - 1;
                if (!(Coord(f.x, y) in seen)) {
                    heap ~= S(f.x, y, f.c+1);
                    seen[Coord(f.x, y)] = true;
                }
            }
        }
    }

    res.writeln;
}