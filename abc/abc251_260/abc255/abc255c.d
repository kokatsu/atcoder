import std;

void main() {
    long X, A, D, N;
    readf("%d %d %d %d\n", X, A, D, N);

    long L = A, R = A + D * (N - 1);
    if (L > R)
        swap(L, R);

    long res;
    if (D == 0) {
        res = abs(X - A);
    }
    else if (X <= L) {
        res = abs(L - X);
    }
    else if (X >= R) {
        res = abs(R - X);
    }
    else {
        long Y = X - A;
        if (D < 0)
            D = -D, Y = -Y;

        long M = Y / D;
        res = min(Y - D * M, D * (M + 1) - Y);
    }

    res.writeln;
}
