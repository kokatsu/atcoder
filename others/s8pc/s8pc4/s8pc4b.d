import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(long[]);

    auto arr = iota(N).array;

    bool flag = K * 2 <= N;
    auto comb = flag ? combinations(arr, K) : combinations(arr, N-K);

    long res = long.max;
    foreach (c; comb) {
        auto choices = new bool[N];
        choices[] = !flag;
        foreach (i; c) choices[i] = flag;

        long num, pre;
        foreach (i, x; choices) {
            if (x && a[i] <= pre) {
                num += pre + 1 - a[i];
                ++pre;
            }
            else {
                pre = max(pre, a[i]);
            }
        }

        res = min(res, num);
    }

    res.writeln;
}

long[][] combinations(long[] x, long y) {
    long[][] ret;
    long len = x.length.to!long;

    void f(long a, long[] b) {
        if (b.length >= y) {
            ret ~= b;
        }
        else {
            foreach (i; a .. len) {
                f(i+1, b~x[i]);
            }
        }
    }

    f(0, []);

    return ret;
}