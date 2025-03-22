import std;

struct Coord {
    int x, y;

    Coord opUnary(string op)() {
        if (op == "-") {
            return Coord(-x, -y);
        }
        return this;
    }

    Coord opBinary(string op)(Coord that) {
        if (op == "+") {
            return Coord(this.x + that.x, this.y + that.y);
        }
        return this;
    }

    Coord opOpAssign(string op)(Coord that) {
        if (op == "+") {
            this.x += that.x;
            this.y += that.y;
        }
        return this;
    }
}

void main() {
    int N, R, C;
    string S;
    readf("%d %d %d\n%s\n", N, R, C, S);

    Coord dir(dchar c) {
        switch (c) {
        case 'N':
            return Coord(-1, 0);
        case 'W':
            return Coord(0, -1);
        case 'S':
            return Coord(1, 0);
        case 'E':
            return Coord(0, 1);
        default:
            assert(false);
        }
    }

    Coord O = Coord(0, 0), P = Coord(R, C);
    Coord M = O;
    bool[Coord] coords;
    coords[M] = true;
    auto res = new dchar[](N);
    foreach (i, s; S) {
        M += dir(s);

        Coord W = -M;
        if (W !in coords) {
            coords[W] = true;
        }

        Coord Q = P + W;
        res[i] = Q in coords ? '1' : '0';
    }

    res.writeln;
}
