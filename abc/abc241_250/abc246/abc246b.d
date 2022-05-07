import std;

void main() {
    real A, B;
    readf("%f %f\n", A, B);

    real theta = A == 0.0 ? PI_2 : atan(B/A);

    real x = cos(theta).abs, y = sin(theta).abs;
    writefln("%.10f %.10f", x, y);
}