import std;

void main() {
    int N;
    readf("%d\n", N);

    int[int] B;
    foreach (_; 0 .. N) {
        int A, C;
        readf("%d %d\n", A, C);

        if (C !in B) {
            B[C] = int.max;
        }

        B[C] = min(B[C], A);
    }

    int res = B.values.maxElement;
    res.writeln;
}
