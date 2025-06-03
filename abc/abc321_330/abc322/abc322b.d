import std;

void main() {
    int N, M;
    string S, T;
    readf("%d %d\n%s\n%s\n", N, M, S, T);

    int res;

    if (T[0 .. N] != S) {
        res += 1 << 1;
    }

    if (T[M - N .. $] != S) {
        res += 1 << 0;
    }

    res.writeln;
}
