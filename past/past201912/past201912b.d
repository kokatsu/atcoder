import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[N];
    foreach (i; 0 .. N)
        readf("%d\n", A[i]);

    foreach (i; 1 .. N) {
        if (A[i] == A[i - 1]) {
            "stay".writeln;
        }
        else if (A[i] < A[i - 1]) {
            writeln("down ", A[i - 1] - A[i]);
        }
        else {
            writeln("up ", A[i] - A[i - 1]);
        }
    }
}
