import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edge = new int[][](N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        edge[A] ~= B, edge[B] ~= A;
    }

    auto root = new int[](N);
    root[] = -1;

    void f(int x, int y) {
        root[x] = y;
        foreach (e; edge[x]) {
            if (root[e] != -1) continue;
            f(e, y);
        }
    }

    foreach (i; 0 .. N) {
        if (root[i] == - 1) f(i, i);
    }

    writeln(root.all!"a == 0" ? "The graph is connected." : "The graph is not connected.");
}