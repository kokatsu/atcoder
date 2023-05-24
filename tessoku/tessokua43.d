import std;

void main() {
    int N, L;
    readf("%d %d\n", N, L);

    int res;
    foreach (i; 0 .. N) {
        int A;
        dchar B;
        readf("%d %c\n", A, B);

        if (B == 'E') res = max(res, L-A);
        else res = max(res, A);
    }

    res.writeln;
}