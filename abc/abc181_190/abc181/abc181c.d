import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = new int[](N), y = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", x[i], y[i]);

    bool isOK;
    foreach (i; 0 .. N - 2) {
        foreach (j; i + 1 .. N - 1) {
            long dx1 = x[j] - x[i], dy1 = y[j] - y[i];

            foreach (k; j + 1 .. N) {
                long dx2 = x[k] - x[j], dy2 = y[k] - y[j];

                isOK |= (dx1 * dy2 == dx2 * dy1);
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}
