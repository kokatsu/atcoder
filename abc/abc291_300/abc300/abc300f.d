import std;

void main() {
    long N, M, K;
    string S;
    readf("%d %d %d\n%s\n", N, M, K, S);

    auto X = S.map!(s => s == 'x').array.to!(long[]);

    auto XC = ([0L] ~ X).cumulativeFold!"a + b".array;

    long f(long x) {
        return x / N * XC[N] + XC[x%N];
    }

    long res;
    foreach (i; 1 .. N+1) {
        long num = f(i-1);

        long l = i, r = N * M;
        while (l <= r) {
            long mid = (l + r) / 2;
            if (f(mid) - num <= K) {
                l = mid + 1;
            }
            else {
                r = mid - 1;
            }
        }

        res = max(res, r-i+1);
    }

    res.writeln;
}