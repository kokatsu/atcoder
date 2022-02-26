import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto num = new long[](N), list = new long[](N);
    num[] = -1;

    long res, pos, pre, cnt;
    while (K > 0) {
        pre = pos;
        pos = res % N;
        if (num[pos] >= 0) break;

        res += A[pos];
        num[pos] = ++cnt;
        list[pos] = res;
        --K;
    }

    if (K > 0) {
        long len = num[pre] - num[pos] + 1;
        long loop = K / len;
        res += (list[pre] - list[pos] + A[pos]) * loop;

        K %= len;
        while (K > 0) {
            res += A[pos];

            pre = pos;
            pos = res % N;

            --K;
        }
    }

    res.writeln;
}