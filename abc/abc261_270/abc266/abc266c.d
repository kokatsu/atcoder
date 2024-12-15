import std;

void main() {
    int cnt = 4;
    auto x = new real[](cnt), y = new real[](cnt);
    foreach (i; 0 .. cnt)
        readf("%f %f\n", x[i], y[i]);

    bool isOK = true;
    foreach (i; 0 .. cnt) {
        int j = (i + 1) % cnt, k = (i + 2) % cnt;

        real x1 = x[i] - x[j], y1 = y[i] - y[j];
        real x2 = x[k] - x[j], y2 = y[k] - y[j];

        real c = x1 * y2 - y1 * x2;

        isOK &= (c < 0.0);
    }

    writeln(isOK ? "Yes" : "No");
}
