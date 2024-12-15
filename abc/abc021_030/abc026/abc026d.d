import std;

enum real eps = 1e-9;

void main() {
    real A, B, C;
    readf("%f %f %f\n", A, B, C);

    real f(real x) {
        return A * x + B * sin(C * x * PI);
    }

    real ok = 0.0, ng = 1e3, val = 100.0;
    while (abs(f(ok) - val) > eps) {
        real mid = (ok + ng) / 2.0;
        (f(mid) <= val ? ok : ng) = mid;
    }

    writefln("%.10f", ok);
}
