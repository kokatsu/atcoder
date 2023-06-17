import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto path = new int[][](N+1);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        path[A] ~= B, path[B] ~= A;
    }

    foreach (i; 1 .. N+1) {
        writefln("%d: {%(%s, %)}", i, path[i]);
    }
}