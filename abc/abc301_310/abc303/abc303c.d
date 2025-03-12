import std;

struct Coord {
    int x, y;

    Coord opOpAssign(string op)(Coord that) {
        static if (op == "+") {
            this.x += that.x;
            this.y += that.y;
        }
        return this;
    }
}

void main() {
    int N, M, H, K;
    string S;
    readf("%d %d %d %d\n%s\n", N, M, H, K, S);

    bool[Coord] items;
    foreach (i; 0 .. M) {
        int x, y;
        readf("%d %d\n", x, y);

        items[Coord(x, y)] = true;
    }

    Coord[dchar] moves = [
        'R': Coord(1, 0), 'L': Coord(-1, 0), 'U': Coord(0, 1), 'D': Coord(0, -1),
    ];

    Coord pos = Coord(0, 0);
    foreach (c; S) {
        pos += moves[c];
        --H;

        if (H < 0) {
            writeln("No");
            return;
        }

        if (pos in items && items[pos] && H < K) {
            H = K;
            items[pos] = false;
        }
    }

    writeln("Yes");
}
