import std;

void main() {
    long N, K, P;
    readf("%d %d %d\n", N, K, P);

    auto A = readln.chomp.split.to!(long[]);

    long M = N / 2;
    auto list = new long[][](K + 1);
    foreach (i; 0 .. 1 << M) {
        long num, cnt;
        foreach (j; 0 .. M) {
            if ((i >> j) & 1)
                num += A[j], ++cnt;
        }

        if (cnt <= K)
            list[cnt] ~= num;
    }

    auto sorted = new SortedRange!(long[], "a < b")[](K + 1);
    foreach (i; 0 .. K + 1)
        sorted[i] = list[i].sort;

    long res, L = N - M;
    foreach (i; 0 .. 1 << L) {
        long num = P, cnt = K;
        foreach (j; 0 .. L) {
            if ((i >> j) & 1)
                num -= A[M + j], --cnt;
        }

        if (cnt >= 0) {
            auto lb = sorted[cnt].lowerBound(num + 1);
            res += lb.length;
        }
    }

    res.writeln;
}
