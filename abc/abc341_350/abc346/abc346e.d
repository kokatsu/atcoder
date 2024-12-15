import std;

enum long L = 2 * 10 ^^ 5 + 1;

void main() {
    long H, W, M;
    readf("%d %d %d\n", H, W, M);

    auto T = new long[](M), A = new long[](M), X = new long[](M);
    foreach (i; 0 .. M)
        readf("%d %d %d\n", T[i], A[i], X[i]);

    auto counts = new long[](L);
    counts[0] = H * W;

    auto seenR = new bool[](H + 1), seenC = new bool[](W + 1);
    long R = H, C = W;
    foreach_reverse (i; 0 .. M) {
        if (T[i] == 1) {
            if (seenR[A[i]])
                continue;

            seenR[A[i]] = true;
            counts[X[i]] += C;
            counts[0] -= C;
            --R;
        }
        else {
            if (seenC[A[i]])
                continue;

            seenC[A[i]] = true;
            counts[X[i]] += R;
            counts[0] -= R;
            --C;
        }
    }

    auto res = iota(L).filter!(i => counts[i] > 0)
        .map!(i => tuple(i, counts[i]))
        .array;

    res.length.writeln;
    foreach (x; res)
        writeln(x[0], " ", x[1]);
}
