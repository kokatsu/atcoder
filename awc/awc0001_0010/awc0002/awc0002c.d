import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int res;
    foreach (_; 0 .. N) {
        int A, B;
        readfln("%d %d", A, B);

        res = max(res, (M - A + B - 1) / B);
    }

    res.writeln;
}
