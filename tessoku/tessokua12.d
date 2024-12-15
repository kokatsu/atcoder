import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long ok = 2 * 10 ^^ 9, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2, cnt;
        foreach (a; A) {
            cnt += mid / a;
        }

        (cnt >= K ? ok : ng) = mid;
    }

    ok.writeln;
}
