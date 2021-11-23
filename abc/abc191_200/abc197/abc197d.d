import std;

void main() {
    int N;
    readf("%d\n", N);

    real x0, y0;
    readf("%f %f\n", x0, y0);

    real xh ,yh;
    readf("%f %f\n", xh, yh);

    real xo = (x0 + xh) / 2.0, yo = (y0 + yh) / 2.0;
    real r = hypot(xh-x0, yh-y0) / 2.0;
    real theta = 2.0 * PI / N;

    real x = x0 - xo, y = y0 - yo;

    real x1 = xo + x * cos(theta) - y * sin(theta);
    real y1 = yo + x * sin(theta) + y * cos(theta);

    format("%.10f %.10f", x1, y1).writeln;
}