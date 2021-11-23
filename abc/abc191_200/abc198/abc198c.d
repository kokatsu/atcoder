import std;

void main() {
    real R, X, Y;
    readf("%f %f %f\n", R, X, Y);

    real D = hypot(X, Y);

    real C = D / R;

    int res;
    if (C < 1.0) {
        res = 2;
    }
    else {
        res = C.ceil.to!int;
    }

    res.writeln;
}