import std;

void main() {
    int N;
    readf("%d\n", N);

    int res, P;
    foreach (_; 0 .. N) {
        int T, V;
        readf("%d %d\n", T, V);

        res = max(0, res - T + P) + V;
        P = T;
    }

    res.writeln;
}
