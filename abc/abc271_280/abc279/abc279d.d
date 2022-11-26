import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    real a = A.to!real, b = B.to!real;

    real f(long x) {
        real g = x.to!real;
        return b * g + a / sqrt(g+1);
    }

    long l, r = A;
    while (r - l > 2) {
        long u = l + (r - l) / 3, v = r - (r - l) / 3;

        if (f(u) < f(v)) r = v;
        else l = u;
    }

    real res = min(f(l), f(l+1), f(r));
    writefln("%.10f", res);
}