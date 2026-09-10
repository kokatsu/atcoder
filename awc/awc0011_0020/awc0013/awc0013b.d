import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int res;
    bool[Tuple!(int, int)] D;
    foreach (_; 0 .. M) {
        int A, B;
        readfln("%d %d", A, B);

        if (D.get(tuple(B, A), false)) {
            ++res;
        }

        D[tuple(A, B)] = true;
    }

    res.writeln;
}
