import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto roads = new int[][](N+1);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        roads[A] ~= B, roads[B] ~= A;
    }

    foreach (i; 1 .. N+1) {
        write(roads[i].length, " ");

        roads[i].sort;
        writefln("%(%s %)", roads[i]);
    }
}