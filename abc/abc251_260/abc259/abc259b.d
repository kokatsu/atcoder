import std;

void main() {
    real a, b, d;
    readf("%f %f %f\n", a, b, d);

    real t = d * (PI / 180.0);

    real x = a * cos(t) - b * sin(t);
    real y = a * sin(t) + b * cos(t);
    writefln("%.10f %.10f", x, y);
}
