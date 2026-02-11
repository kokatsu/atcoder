import std;

void main() {
    int N;
    readfln("%d", N);

    real[] x = new real[](N), y = new real[](N);
    foreach (i; 0 .. N) {
        readfln("%f %f", x[i], y[i]);
    }

    real res = 0.0;
    foreach (i; 0 .. N) {
        foreach (j; i + 1 .. N) {
            res = max(res, hypot(x[i] - x[j], y[i] - y[j]));
        }
    }

    writefln("%.20f", res);
}
