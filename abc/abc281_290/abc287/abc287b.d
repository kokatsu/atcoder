import std;

enum int L = 1_000;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto C = new int[](L);
    foreach (_; 0 .. N) {
        int S;
        readf("%d\n", S);

        ++C[S % L];
    }

    int res;
    foreach (_; 0 .. M) {
        int T;
        readf("%d\n", T);

        res += C[T];
        C[T] = 0;
    }

    res.writeln;
}
