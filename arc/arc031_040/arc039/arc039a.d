import std;

void main() {
    int A, B;
    readfln("%d %d", A, B);

    int res = A - B;

    foreach_reverse (i; 0 .. 3) {
        int u = 10 ^^ i, v = 10 ^^ (i + 1);
        int d = (A % v) / u;

        if (d < 9) {
            int X = A + (9 - d) * u;
            res = max(res, X - B);
            break;
        }
    }

    foreach_reverse (i; 0 .. 3) {
        int u = 10 ^^ i, v = 10 ^^ (i + 1);
        int d = (B % v) / u;

        if (i == 2) {
            if (d > 1) {
                int Y = B + (1 - d) * u;
                res = max(res, A - Y);
                break;
            }
        }
        else {
            if (d > 0) {
                int Y = B - d * u;
                res = max(res, A - Y);
                break;
            }
        }
    }

    res.writeln;
}
