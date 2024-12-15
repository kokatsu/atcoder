import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    auto C = B.sort;

    int res = int.max;
    foreach (a; A) {
        auto l = C.lowerBound(a).length;

        if (l > 0) {
            res = min(res, a - B[l - 1]);
        }

        if (l < M) {
            res = min(res, B[l] - a);
        }
    }

    res.writeln;
}
