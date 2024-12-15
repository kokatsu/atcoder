import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[](N);
    foreach (i; 0 .. N)
        readf("%d\n", A[i]);

    long D = N / 2, R = N % 2;

    long f() {
        long x, y;

        foreach (i; 0 .. D) {
            x += A[D - i - 1] * 2, y += A[D + i + R] * 2;
        }

        if (R == 1)
            y += A[D] - A[D + 1];
        else
            x -= A[D - 1], y -= A[D];

        return abs(x - y);
    }

    A.sort;

    long res = f();

    A.reverse;

    res = max(res, f());

    res.writeln;
}
