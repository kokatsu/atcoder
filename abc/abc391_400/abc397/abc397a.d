import std;

void main() {
    real X;
    readf("%f\n", X);

    int res = 3;
    if (X >= 38.0) {
        res = 1;
    }
    else if (X >= 37.5) {
        res = 2;
    }

    res.writeln;
}
