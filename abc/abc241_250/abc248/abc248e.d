import std;

struct S {
    long a, b, c;
}

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto X = new long[](N), Y = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", X[i], Y[i]);

    if (K == 1) {
        "Infinity".writeln;
        return;
    }

    long[S] list;
    foreach (i; 0 .. N-1) {
        foreach (j; i+1 .. N) {
            if (X[i] == X[j]) {
                long cnt;
                foreach (x; X) {
                    if (x == X[i]) ++cnt;
                }

                if (cnt >= K) {
                    ++list[S(X[i], 0, 0)];
                }
            }
            else if (Y[i] == Y[j]) {
                long cnt;
                foreach (y; Y) {
                    if (y == Y[i]) ++cnt;
                }

                if (cnt >= K) {
                    ++list[S(0, Y[i], 1)];
                }
            }
            else {
                long Xdiff = X[i] - X[j];
                long Ydiff = Y[i] - Y[j];
                if (Xdiff < 0) {
                    Xdiff *= -1, Ydiff *= -1;
                }
                long g = gcd(Xdiff, Ydiff.abs);
                Xdiff /= g, Ydiff /= g;

                long cnt;
                foreach (x, y; zip(X, Y)) {
                    long u = x - X[i], v = y - Y[i];
                    if (Xdiff * v == Ydiff * u) ++cnt;
                }

                if (cnt >= K) {
                    ++list[S(Xdiff, Ydiff, Xdiff*Y[i]-Ydiff*X[i])];
                }
            }
        }
    }

    auto res = list.length;
    res.writeln;
}