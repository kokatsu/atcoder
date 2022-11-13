import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = new long[](N), y = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", x[i], y[i]);

    long res;
    foreach (i; 0 .. N-2) {
        foreach (j; i+1 .. N-1) {
            long x1 = x[j] - x[i], y1 = y[j] - y[i];

            foreach (k; j+1 .. N) {
                long x2 = x[k] - x[i], y2 = y[k] - y[i];

                long S = abs(x1*y2-x2*y1);
                if (S > 0 && S % 2 == 0) ++res;
            }
        }
    }

    res.writeln;
}