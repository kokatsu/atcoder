import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = new real[](N), y = new real[](N);
    foreach (i; 0 .. N) {
        readf("%f %f\n", x[i], y[i]);
    }

    real res = 0.0;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            res = max(res, hypot(x[i] - x[j], y[i] - y[j]));
        }
    }

    format("%.10f", res).writeln;
}
