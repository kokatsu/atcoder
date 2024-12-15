import std;

void main() {
    long X;
    readf("%d\n", X);

    long res = long.max;
    foreach (i; 0 .. 10) {
        foreach (j; 1 .. 10) {
            long num = j, d = j;

            while (num < X) {
                d -= i;
                if (d <= 0)
                    break;

                num = num * 10 + d;
            }

            if (num >= X)
                res = min(res, num);
        }

        foreach (j; 0 .. 10) {
            if (i == 0)
                continue;

            long num = j, d = j;

            while (num < X) {
                d += i;
                if (d >= 10)
                    break;

                num = num * 10 + d;
            }

            if (num >= X)
                res = min(res, num);
        }

        foreach (j; 0 .. 10) {
            if (i == 0)
                continue;

            long num = j, d = j, b = 1;

            while (num < X) {
                d += i;
                if (d >= 10)
                    break;

                b *= 10;
                num = d * b + num;
            }

            if (num >= X)
                res = min(res, num);
        }
    }

    res.writeln;
}
