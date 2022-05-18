import std;

void main() {
    real A, B;
    readf("%f %f\n", A, B);

    real res = A * B / 100.0;
    writefln("%.10f", res);
}