import std;

void main() {
    long N;
    readfln("%d", N);

    long[long] D;
    long F = 5, X = 1;
    while (F <= N) {
        D[F] = X;
        F *= 5, ++X;
    }

    string res = "-1";
    long T = 3, Y = 1;
    while (T <= N) {
        long M = D.get(N - T, 0);
        if (M > 0) {
            res = format("%d %d", Y, M);
            break;
        }
        T *= 3, ++Y;
    }

    res.writeln;
}
