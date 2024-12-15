import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto cnts = new int[](N + 1);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        ++cnts[A], ++cnts[B];
    }

    auto res = cnts.maxIndex;
    res.writeln;
}
