import std;

void main() {
    int N;
    readfln("%d", N);

    int res = int.max;
    foreach (_; 0 .. N) {
        int A, B;
        readfln("%d %d", A, B);

        res = min(res, A + B);
    }

    res.writeln;
}
