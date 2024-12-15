import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);
    auto F = readln.chomp.split.to!(long[]);

    A.sort;
    F.sort!"a > b";

    bool f(long x) {
        long cnt;
        foreach (i; 0 .. N) {
            cnt += max(0, A[i] - x / F[i]);
        }
        return cnt <= K;
    }

    long ok = long.max / 2, ng = -1;
    while (abs(ok - ng) > 1) {
        long mid = (ok + ng) / 2;
        (f(mid) ? ok : ng) = mid;
    }

    ok.writeln;
}
