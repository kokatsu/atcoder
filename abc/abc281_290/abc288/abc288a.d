import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = new int[](N);
    foreach (i; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        res[i] = A + B;
    }

    writefln("%(%d\n%)", res);
}
