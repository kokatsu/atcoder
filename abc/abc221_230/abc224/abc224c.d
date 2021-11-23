import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = new long[](N), Y = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", X[i], Y[i]);
    }

    zip(X, Y).sort!"a[0] < b[0]";

    long res;
    foreach (i; 0 .. N-2) {
        foreach (j; i+1 .. N-1) {
            if (X[i] == X[j] && Y[i] == Y[j]) {
                continue;
            }

            foreach (k; j+1 .. N) {
                if ((X[i] == X[k] && Y[i] == Y[k]) || (X[j] == X[k] && Y[j] == Y[k])) {
                    continue;
                }

                if (X[i] == X[j] && X[j] == X[k]) {
                    continue;
                }

                if (Y[i] == Y[j] && Y[j] == Y[k]) {
                    continue;
                }

                long num1 = Y[j] - Y[i], den1 = X[j] - X[i];
                long num2 = Y[k] - Y[j], den2 = X[k] - X[j];

                if (num1 * den2 == num2 * den1) {
                    continue;
                }

                ++res;
            }
        }
    }

    res.writeln;
}