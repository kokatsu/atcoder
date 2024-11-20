import std;

void main() {
    int xa, ya, xb, yb, xc, yc;
    readf("%d %d %d %d %d %d\n", xa, ya, xb, yb, xc, yc);

    real res = 0.5 * abs((xb - xa) * (yc - ya) - (xc - xa) * (yb - ya));
    writefln("%.10f", res);
}