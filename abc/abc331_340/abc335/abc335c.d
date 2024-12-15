import std;

struct Coord {
    int x, y;
}

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto P = new Coord[](N + Q);
    foreach (i; 0 .. N) {
        P[i] = Coord(N - i, 0);
    }

    int M = N - 1;
    foreach (_; 0 .. Q) {
        int q;
        string s;
        readf("%d %s\n", q, s);

        if (q == 1) {
            Coord next = P[M];
            if (s == "R")
                ++next.x;
            if (s == "L")
                --next.x;
            if (s == "U")
                ++next.y;
            if (s == "D")
                --next.y;
            P[++M] = next;
        }
        else {
            int idx = M - s.to!int + 1;
            writefln("%d %d", P[idx].x, P[idx].y);
        }
    }
}
