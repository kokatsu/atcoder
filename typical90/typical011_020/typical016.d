import std;

void main() {
    long N, A, B, C;
    readf("%d\n%d %d %d\n", N, A, B, C);

    long limit = 9999;
    long res = int.max;
    foreach (i; 0 .. limit + 1) {
        long x = A * i;
        if (x > N) {
            break;
        }

        foreach (j; 0 .. limit - i + 1) {
            long y = B * j;
            if (x + y > N) {
                break;
            }

            long rem = N - x - y;
            if (rem % C != 0) {
                continue;
            }

            long k = rem / C;
            res = min(res, i + j + k);
        }
    }

    res.writeln;
}
