import std;

void main() {
    long N, a, b;
    readf("%d %d %d\n", N, a, b);

    auto A = readln.chomp.split.to!(long[]);

    bool f(long x) {
        long cnt;
        foreach (y; A) {
            cnt += (y > x ? (y - x) / b : -(x - y + a - 1) / a);
        }

        return (cnt >= 0);
    }

    long ok, ng = A.maxElement + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        (f(mid) ? ok : ng) = mid;
    }

    ok.writeln;
}