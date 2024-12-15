import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto C = A.sort, D = B.sort;

    long ok = B[M - 1] + 1, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        auto x = C.lowerBound(mid + 1).length;
        auto y = D.upperBound(mid - 1).length;

        (x >= y ? ok : ng) = mid;
    }

    ok.writeln;
}
