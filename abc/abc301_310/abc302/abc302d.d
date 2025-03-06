import std;

void main() {
    long N, M, D;
    readf("%d %d %d\n", N, M, D);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto S = B.sort;

    long res = -1;
    foreach (a; A) {
        auto lb = S.lowerBound(a + D + 1);
        if (!lb.empty && abs(a - lb.back) <= D) {
            res = max(res, a + lb.back);
        }
    }

    res.writeln;
}
