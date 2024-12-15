import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    int[] x, y;
    while (X > 1 || Y > 1) {
        x ~= X, y ~= Y;

        if (X > Y) {
            X -= Y;
        }
        else {
            Y -= X;
        }
    }

    x.length.writeln;
    foreach_reverse (u, v; zip(x, y))
        writeln(u, " ", v);
}
