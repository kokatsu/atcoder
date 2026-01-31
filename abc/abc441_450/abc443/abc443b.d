import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long M = N * (N - 1) / 2;

    long ok = 10L ^^ 9, ng = N - 1;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;
        long m = mid * (mid + 1) / 2 - M;
        if (m >= K) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    long res = max(0, ok - N);
    res.writeln;
}
