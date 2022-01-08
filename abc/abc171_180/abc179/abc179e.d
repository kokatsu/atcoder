import std;

void main() {
    long N, X, M;
    readf("%d %d %d\n", N, X, M);

    auto nums = new long[](M);
    nums[X] = 1;

    auto S = new long[](M+1);
    S[1] = X;

    --N;

    long res = X, cnt = 1;
    long now = X, pre;
    while (N > 0) {
        pre = now;
        now = pre * pre % M;

        if (nums[now] > 0) break;

        --N;
        nums[now] = ++cnt;
        S[cnt] = S[cnt-1] + now;
        res += now;
    }

    if (N > 0) {
        long b = nums[now], e = nums[pre];
        long d = N / (e - b + 1);
        res += d * (S[e] - S[b-1]);
        N %= d;

        res += S[b+N-1] - S[b-1];
    }

    res.writeln;
}