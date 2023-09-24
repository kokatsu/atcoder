import std;

void main() {
    int N;
    readf("%d\n", N);

    int res, num = -1;
    foreach (i; 1 .. N+1) {
        int A;
        readf("%d\n", A);

        if (A > num) {
            res = i, num = A;
        }
    }

    res.writeln;
}