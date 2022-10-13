import std;

void main() {
    real a, b, x;
    readf("%f %f %f\n", a, b, x);

    real res, c = x / (a * a) * 2.0 - b;
    if (c > 0) {
        res = 90.0 - atan(a/(b-c)) * 180.0 / PI;
    }
    else {
        real d = x / (a * b) * 2.0;
        res = 90.0 - atan(d/b) * 180.0 / PI;
    }

    writefln("%.10f", res);
}