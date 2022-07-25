import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = int.max;
    foreach (_; 0 .. N) {
        int A, P, X;
        readf("%d %d %d\n", A, P, X);

        if (X > A) res = min(res, P);
    }

    if (res == int.max) res = -1;

    res.writeln;
}