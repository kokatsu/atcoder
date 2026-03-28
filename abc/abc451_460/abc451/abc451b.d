import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] D = new int[](M);
    foreach (_; 0 .. N) {
        int A, B;
        readfln("%d %d", A, B);

        --D[A - 1];
        ++D[B - 1];
    }

    string res = format("%(%d\n%)", D);
    res.writeln;
}
