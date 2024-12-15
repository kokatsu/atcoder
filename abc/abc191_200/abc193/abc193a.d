import std;

void main() {
    real A, B;
    readf("%f %f\n", A, B);

    real res = (1.0 - B / A) * 100.0;
    writefln("%.10f", res);
}
