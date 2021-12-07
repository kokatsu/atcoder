import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N, S, K;
        readf("%d %d %d\n", N, S, K);

        long res = -1;

        long g = gcd(N, K);
        if (S % g == 0) {
            N /= g, S /= g, K /= g;

            long invK = invmod(K, N);
            res = (((-S) * invK) % N + N) % N;
        }

        res.writeln;
    }
}

T invmod(T)(T a, T b) {
    if (b == 1) {
        return 0;
    }

    T b0 = b, x = 1, y;
    while (a > 1) {
        T q = a / b, t = b;

        b = a % b, a = t, t = y;

        y = x - q * y, x = t;
    }

    if (x < 0) {
        x += b0;
    }

    return x;
}