import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    real x = ((n % 12) * 60.0 + m) * 0.5, y = m * 6.0;
    real d = abs(x - y);

    real res = min(d, 360.0 - d);
    writefln("%.10f", res);
}
