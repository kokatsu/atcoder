import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    int res = N;
    foreach (_; 0 .. N) {
        int t;
        readf("%d\n", t);

        if (A <= t && t < B)
            --res;
    }

    res.writeln;
}
