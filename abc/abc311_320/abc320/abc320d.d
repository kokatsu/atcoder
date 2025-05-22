import std;

struct Coord {
    long x, y;
}

struct NCoord {
    Nullable!Coord value;

    string toString() {
        if (value.isNull) {
            return "undecidable";
        }
        return format("%d %d", value.get.x, value.get.y);
    }
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto G = new Coord[long][](N);
    foreach (i; 0 .. M) {
        long A, B, X, Y;
        readf("%d %d %d %d\n", A, B, X, Y);

        --A, --B;
        G[A][B] = Coord(X, Y);
        G[B][A] = Coord(-X, -Y);
    }

    long[] heap = [0];
    auto coords = new NCoord[](N);
    coords[0].value = Coord(0, 0);
    while (!heap.empty) {
        long f = heap.front;
        heap.popFront;

        foreach (k, g; G[f]) {
            if (coords[k].value.isNull) {
                long nx = coords[f].value.get.x + g.x;
                long ny = coords[f].value.get.y + g.y;
                coords[k].value = Coord(nx, ny);
                heap ~= k;
            }
        }
    }

    string res = format("%(%s\n%)", coords);
    res.writeln;
}
