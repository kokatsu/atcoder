import std;

void main() {
    long N, D, S, T;
    readfln("%d %d %d %d", N, D, S, T);

    long[] X = new long[](N), Y = new long[](N);
    foreach (i; 0 .. N) {
        readfln("%d %d", X[i], Y[i]);
    }

    --S, --T;
    long W = D * D;

    long[] Z = new long[](N);
    Z[] = long.max;
    Z[S] = 0;

    long[] Q = [S];
    while (!Q.empty) {
        long f = Q.front;
        Q.popFront;

        foreach (i; 0 .. N) {
            if (Z[i] < long.max) {
                continue;
            }

            long L = (X[f] - X[i]) ^^ 2 + (Y[f] - Y[i]) ^^ 2;
            if (L <= W) {
                Z[i] = Z[f] + 1;
                Q ~= i;
            }
        }
    }

    long res = Z[T] == long.max ? -1 : Z[T];
    res.writeln;
}
