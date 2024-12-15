import std;

void main() {
    int N, S, T;
    readf("%d %d %d\n", N, S, T);

    int res, W;
    foreach (i; 0 .. N) {
        int A;
        readf("%d\n", A);

        W += A;

        if (S <= W && W <= T)
            ++res;
    }

    res.writeln;
}
