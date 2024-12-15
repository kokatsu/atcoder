import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = new int[](N), y = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", x[i], y[i]);

    int res;
    foreach (i; 0 .. N - 1) {
        foreach (j; i + 1 .. N) {
            int dx = abs(x[i] - x[j]), dy = abs(y[i] - y[j]);
            if (dx >= dy)
                ++res;
        }
    }

    res.writeln;
}
