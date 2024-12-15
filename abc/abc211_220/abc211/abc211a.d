import std;

void main() {
    real A, B;
    readf("%f %f\n", A, B);

    real C = (A + B * 2.0) / 3.0;
    writefln("%.10f", C);
}
