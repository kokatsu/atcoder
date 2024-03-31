import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new int[](N);
    foreach (i; 0 .. N) readf("%d\n", A[i]);

    auto B = new int[](M);
    foreach (i; 0 .. M) readf("%d\n", B[i]);

    int pos;
    foreach (i, b; B) {
        int next = pos + b;
        if (next >= N - 1) {
            writeln(i+1);
            return;
        }

        pos = next + A[next];
        if (pos >= N - 1) {
            writeln(i+1);
            return;
        }
    }
}