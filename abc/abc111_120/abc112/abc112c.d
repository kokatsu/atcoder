import std;

void main() {
    long N;
    readf("%d\n", N);

    auto x = new long[](N), y = new long[](N), h = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d %d\n", x[i], y[i], h[i]);

    long L = 101;
    foreach (u; 0 .. L) {
        foreach (v; 0 .. L) {
            long z;
            foreach (i; 0 .. N) {
                if (h[i] > 0)
                    z = h[i] + abs(x[i] - u) + abs(y[i] - v);
            }

            bool isOK = true;
            foreach (i; 0 .. N) {
                if (h[i] != max(0, z - abs(x[i] - u) - abs(y[i] - v))) {
                    isOK = false;
                }
            }

            if (isOK) {
                writeln(u, " ", v, " ", z);
                return;
            }
        }
    }
}
