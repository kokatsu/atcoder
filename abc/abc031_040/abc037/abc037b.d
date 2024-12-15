import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto a = new int[](N);
    foreach (_; 0 .. Q) {
        int L, R, T;
        readf("%d %d %d\n", L, R, T);

        foreach (i; L - 1 .. R)
            a[i] = T;
    }

    writefln("%(%s\n%)", a);
}
