import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long ok = long.max / 2, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long cnt;
        foreach (a; A) {
            cnt += (a - 1) / mid;
        }

        (cnt <= K ? ok : ng) = mid;
    }

    ok.writeln;
}