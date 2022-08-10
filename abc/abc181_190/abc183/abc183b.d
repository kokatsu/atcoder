import std;

void main() {
    real Sx, Sy, Gx, Gy;
    readf("%f %f %f %f\n", Sx, Sy, Gx, Gy);

    real a = (Sy + Gy) / (Sx - Gx);
    real b = Sy - a * Sx;

    real res = -b / a;
    writefln("%.10f", res);
}