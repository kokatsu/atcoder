import std;

void main() {
    long N;
    readf("%d\n", N);

    auto x = new real[](N), y = new real[](N);
    long f = 1;
    foreach (i; 0 .. N) {
        readf("%f %f\n", x[i], y[i]);

        f *= i + 1;
    }

    real s = 0.0;
    auto arr = N.iota.array;
    foreach (a; arr.permutations) {
        foreach (i; 1 .. N) {
            s += hypot(x[a[i-1]]-x[a[i]], y[a[i-1]]-y[a[i]]);
        }
    }

    real res = s / f;
    writefln("%.10f", res);
}