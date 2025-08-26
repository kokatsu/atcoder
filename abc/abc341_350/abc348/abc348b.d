import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] X = new int[](N), Y = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", X[i], Y[i]);
    }

    int[] P = new int[](N);
    foreach (i; 0 .. N) {
        int M;
        foreach (j; 0 .. N) {
            int D = (X[j] - X[i]) ^^ 2 + (Y[j] - Y[i]) ^^ 2;
            if (D > M) {
                M = D;
                P[i] = j + 1;
            }
        }
    }

    string res = format("%(%d\n%)", P);
    res.writeln;
}
