import std;

void main() {
    long N, T;
    readf("%d %d\n", N, T);

    long res = T, pre;
    foreach (i; 0 .. N) {
        int A;
        readf("%d\n", A);

        if (i > 0) {
            res += T.min(A - pre);
        }

        pre = A;
    }

    res.writeln;
}
