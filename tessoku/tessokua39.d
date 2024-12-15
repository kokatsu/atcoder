import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = new int[](N), R = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", L[i], R[i]);

    zip(L, R).sort!"a[1] < b[1]";

    int res, now;
    foreach (l, r; zip(L, R)) {
        if (now <= l) {
            ++res, now = r;
        }
    }

    res.writeln;
}
