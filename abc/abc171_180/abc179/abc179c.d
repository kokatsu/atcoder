import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (A; 1 .. N) {
        int D = N / A, R = N % A;
        if (R == 0)
            --D;

        res += D;
    }

    res.writeln;
}
