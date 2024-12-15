import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](N);
    foreach (i; 0 .. N)
        readf("%d\n", A[i]);

    foreach (k; 1 .. M + 1) {
        foreach (i; 0 .. N - 1) {
            if (A[i] % k > A[i + 1] % k) {
                A.swapAt(i, i + 1);
            }
        }
    }

    writefln("%(%s\n%)", A);
}
