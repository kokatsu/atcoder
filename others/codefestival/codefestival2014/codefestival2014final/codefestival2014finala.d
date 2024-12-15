import std;

enum real l = 50.0;

void main() {
    real s;
    readf("%f\n", s);

    real res = l / s;
    writefln("%.10f", res);
}
