import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    A.sort!"a > b";

    long ok = 0, ng = A.sum / K + 1;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        
        long S;
        foreach (a; A) {
            S += min(mid, a);
        }

        if (S >= K * mid) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    ok.writeln;
}