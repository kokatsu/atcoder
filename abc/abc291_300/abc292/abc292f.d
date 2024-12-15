import std;

enum real EPS = 10e-15;
enum real C = sqrt(3.0) / 2.0;
enum real PI_6 = PI / 6.0;

void main() {
    real A, B;
    readf("%f %f\n", A, B);

    if (A <= B * C) {
        writefln("%.15f", A / C);
        return;
    }
    if (B <= A * C) {
        writefln("%.15f", B / C);
        return;
    }

    real ok = 0.0, ng = PI_6;
    while (ng - ok > EPS) {
        real mid = (ok + ng) / 2.0;

        real x = A / cos(mid), y = B / cos(PI_6 - mid);
        (x <= y ? ok : ng) = mid;
    }

    writefln("%.15f", A / cos(ok));
}
