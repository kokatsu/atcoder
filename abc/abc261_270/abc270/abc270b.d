import std;

void main() {
    int X, Y, Z;
    readf("%d %d %d\n", X, Y, Z);

    int res = X.abs;
    if (Y > 0 && X > Y) {
        if (Z > Y) {
            res = -1;
        }
        else {
            res = Z.abs + (X - Z).abs;
        }
    }
    if (Y < 0 && X < Y) {
        if (Z < Y) {
            res = -1;
        }
        else {
            res = Z.abs + (X - Z).abs;
        }
    }

    res.writeln;
}
