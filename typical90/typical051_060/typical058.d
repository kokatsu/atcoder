import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long M = 10 ^^ 5;

    long[] nthTime = new long[](M);

    bool isLoop;
    long now = N, cnt;
    while (cnt < K) {
        ++cnt;
        if (nthTime[now] == 0) {
            nthTime[now] = cnt;
        }

        long tmp = now, ds;
        while (tmp > 0) {
            ds += tmp % 10;
            tmp /= 10;
        }

        now = (now + ds) % M;

        if (!isLoop && nthTime[now] != 0) {
            K -= cnt;
            K %= (cnt - nthTime[now] + 1);
            cnt = 0;
            isLoop = true;
        }
    }

    now.writeln;
}
