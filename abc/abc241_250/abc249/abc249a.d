import std;

void main() {
    long A, B, C, D, E, F, X;
    readf("%d %d %d %d %d %d %d\n", A, B, C, D, E, F, X);

    long f(long x, long y, long z) {
        long res, num, cnt;
        bool isWalk = true;
        while (num < X) {
            if (isWalk)
                res += y;
            ++num, ++cnt;

            if (isWalk && cnt >= x) {
                isWalk = false;
                cnt = 0;
            }
            else if (!isWalk && cnt >= z) {
                isWalk = true;
                cnt = 0;
            }
        }

        return res;
    }

    long S = f(A, B, C) - f(D, E, F);

    if (S > 0)
        writeln("Takahashi");
    else if (S < 0)
        writeln("Aoki");
    else
        writeln("Draw");
}
