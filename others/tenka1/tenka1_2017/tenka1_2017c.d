import std;

void main() {
    long N;
    readf("%d\n", N);

    long L = 3500;
    foreach (h; 1 .. L+1) {
        foreach (n; 1 .. L+1) {
            long a = N * h * n, b = 4 * h * n - N * (h + n);

            if (b > 0 && a % b == 0) {
                long w = a / b;

                writeln(h, " ", n, " ", w);
                return;
            }
        }
    }
}