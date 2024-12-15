import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long res;
    if (N == 1) {
        long m = max(0, A[0] - K);
        res = (A[0] - m) * (A[0] + m + 1) / 2;
    }
    else {
        A.sort!"a > b";

        auto B = new long[](N);
        foreach (i; 1 .. N) {
            B[i] = A[i - 1] - A[i];
        }

        foreach (i; 1 .. N) {
            long l = B[i] * i;
            if (K <= l) {
                long d = K / i, r = K % i;
                res += (d * (A[i - 1] * 2 - d + 1) / 2) * i;
                res += (A[i - 1] - d) * r;
                K = 0;
                break;
            }

            K -= l;
            res += (B[i] * (A[i - 1] * 2 - B[i] + 1) / 2) * i;
        }

        if (K > 0) {
            long k = min(K, A[N - 1] * N);
            long d = k / N, r = k % N;
            res += (d * (A[N - 1] * 2 - d + 1) / 2) * N;
            res += (A[N - 1] - d) * r;
        }
    }

    res.writeln;
}
