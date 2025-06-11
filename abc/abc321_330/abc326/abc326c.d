import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sort;

    int res;
    foreach (i, a; A) {
        auto lb = S.lowerBound(a + M);
        res = max(res, to!int(lb.length - i));
    }

    res.writeln;
}
