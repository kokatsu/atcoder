import std;

void main() {
    real A, B, H, M;
    readf("%f %f %f %f\n", A, B, H, M);

    real m = 60.0, h = m * 12.0;

    H = H * m + M;

    real t = 2.0 * PI * (H / h), z = 2.0 * PI * (M / m);

    real xa = A * t.cos, ya = A * t.sin;
    real xb = B * z.cos, yb = B * z.sin;

    real res = hypot(xa-xb, ya-yb);
    writefln("%.10f", res);
}