import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto T = new int[](N), L = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", T[i], L[i]);
    }

    auto res = D.iota.map!(k => T.zip(L).map!(z => z[0] * (z[1] + k + 1)).maxElement);
    writefln("%(%d\n%)", res);
}
