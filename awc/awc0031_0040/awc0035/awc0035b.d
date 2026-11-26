import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    long[] D = readln.chomp.split.to!(long[]);
    long[] S = readln.chomp.split.to!(long[]);

    auto A = S.sort;

    long res;
    foreach (d; D) {
        long X = long.max;

        auto lb = A.lowerBound(d + 1);
        if (!lb.empty) {
            X = min(X, d - lb.back);
        }

        auto ub = A.upperBound(d - 1);
        if (!ub.empty) {
            X = min(X, ub.front - d);
        }

        res += X;
    }

    res.writeln;
}
