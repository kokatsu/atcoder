import std;

void main() {
    int L, H;
    readf("%d %d\n", L, H);

    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        int A;
        readf("%d\n", A);

        int res;
        if (A < L)
            res = L - A;
        else if (A > H)
            res = -1;

        res.writeln;
    }
}
