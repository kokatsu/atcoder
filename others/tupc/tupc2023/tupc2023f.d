import std;

enum long L = 10 ^^ 9;

void main() {
    long Q;
    readf("%d\n", Q);

    long N = 1;
    long[][] D = [[1]];
    long[] F;
    foreach (_; 0 .. Q) {
        long t, x;
        readf("%d %d\n", t, x);

        if (t == 1) {
            D[$ - 1] ~= x;
            N = min(L, N + 1);
        }
        else if (t == 2) {
            D ~= (long[]).init;
            F ~= x;
            N = min(L, N * 2);
        }
        else {
            if (x <= N) {
                foreach_reverse (i, d; D) {
                    auto l = d.length;
                    if (x <= l) {
                        d[l - x].writeln;
                        break;
                    }
                    else {
                        x -= l;
                        if (x % 2 == 0) {
                            x /= 2;
                        }
                        else {
                            F[i - 1].writeln;
                            break;
                        }
                    }
                }
            }
            else {
                writeln(-1);
            }
        }
    }
}
