import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long[] A = readln.chomp.split.to!(long[]);

    long ok, ng = M + 2;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        long S = A.map!(a => min(mid, a)).sum;
        (S <= M ? ok : ng) = mid;
    }

    string res = ok <= M ? ok.to!string : "infinite";
    res.writeln;
}
