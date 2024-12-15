import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] B = iota(N + 1).array;
    foreach (_; 0 .. M) {
        int X, Y;
        readf("%d %d\n", X, Y);

        B[X] = Y;
    }

    writefln("%(%s\n%)", B[1 .. $]);
}
