import std;

struct Coord {
    int x;
    int y;
}

void main() {
    int N;
    readf("%d\n", N);

    auto x = new int[](N), y = new int[](N);
    bool[Coord] list;
    foreach (i; 0 .. N) {
        readf("%d %d\n", x[i], y[i]);
        list[Coord(x[i], y[i])] = true;
    }

    int res;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            if (x[i] == x[j] || y[i] == y[j]) {
                continue;
            }

            if (!(Coord(x[i], y[j]) in list)) {
                continue;
            }

            if (!(Coord(x[j], y[i]) in list)) {
                continue;
            }

            ++res;
        }
    }
    res /= 2;

    res.writeln;
}
