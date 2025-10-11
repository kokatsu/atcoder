import std;

void main() {
    int N;
    readf("%d\n", N);

    long f(long x) {
        long R;
        while (x > 0) {
            R += x % 10;
            x /= 10;
        }
        return R;
    }

    long[] A = new long[](N + 1);
    A[0] = 1;
    A[1] = 1;
    foreach (i; 1 .. N) {
        A[i + 1] = A[i] + f(A[i]);
    }

    long res = A[N];
    res.writeln;
}
