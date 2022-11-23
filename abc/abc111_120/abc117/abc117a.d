import std;

void main() {
    real T, X;
    readf("%f %f\n", T, X);

    real res = T / X;
    writefln("%.10f", res);
}