import std;

void main() {
    long N, D;
    readf("%d %d\n", N, D);

    auto L = new long[](N), R = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", L[i], R[i]);
    }

    zip(L, R).sort!"a[1] < b[1]";

    long res, r = long.min;
    foreach (i; 0 .. N) {
        if (r + D <= L[i]) {
            ++res;
            r = R[i];
        }
    }

    res.writeln;
}