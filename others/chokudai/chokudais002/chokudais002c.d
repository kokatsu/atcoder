import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        res = max(res, A + B);
    }

    res.writeln;
}
