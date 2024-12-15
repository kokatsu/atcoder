import std;

void main() {
    long N, L, T, X;
    readf("%d %d %d %d\n", N, L, T, X);

    long res, R;
    foreach (i; 0 .. N) {
        long A, B;
        readf("%d %d\n", A, B);

        if (B >= L) {
            if (A > T) {
                writeln("forever");
                return;
            }

            if (A + R >= T) {
                res += A + X;
                if (A + R > T) {
                    res += T - R;
                    if (A == T) {
                        res += X;
                    }
                }

                if (A + R == T) {
                    R = 0;
                }
                else {
                    R = A % T;
                }
            }
            else {
                res += A;
                R += A;
            }
        }
        else {
            res += A;
            R = 0;
        }
    }

    res.writeln;
}
