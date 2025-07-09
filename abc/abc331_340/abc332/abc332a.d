import std;

void main() {
    int N, S, K;
    readf("%d %d %d\n", N, S, K);

    int res;
    foreach (_; 0 .. N) {
        int P, Q;
        readf("%d %d\n", P, Q);

        res += P * Q;
    }

    if (res < S) {
        res += K;
    }

    res.writeln;
}
