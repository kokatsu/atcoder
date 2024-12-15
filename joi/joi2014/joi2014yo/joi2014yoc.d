import std;

void main() {
    int W, H, N;
    readf("%d %d %d\n", W, H, N);

    int U, V;
    readf("%d %d\n", U, V);

    int res;
    foreach (_; 1 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        int dX = X - U, dY = Y - V;
        if (dX.sgn == dY.sgn)
            res += max(dX.abs, dY.abs);
        else
            res += dX.abs + dY.abs;

        U = X, V = Y;
    }

    res.writeln;
}
