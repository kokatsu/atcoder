import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long res = long.max;
    void f(long num = 0, long idx = 0, long sel = 0) {
        if (sel >= K) {
            long cnt;
            while (num > 0) {
                long d = num % 10;
                cnt += d / 5 + d % 5;
                num /= 10;
            }
            res = min(res, cnt);
            return;
        }

        if (idx >= N)
            return;

        foreach (i; idx .. N) {
            f(num + A[i], i + 1, sel + 1);
        }
    }

    f();

    res.writeln;
}
