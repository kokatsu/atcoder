import std;
import core.bitop;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long len = bsr(K * 2);
    auto cnts = new long[](len);
    foreach (a; A) {
        foreach (i; 0 .. len) {
            if ((a >> i) & 1)
                ++cnts[i];
        }
    }

    long X, h = N / 2;
    foreach_reverse (i, c; cnts) {
        long num = 1L << i;
        if (X + num > K)
            continue;
        if (c <= h)
            X += num;
    }

    long res;
    foreach (a; A)
        res += X ^ a;

    res.writeln;
}
