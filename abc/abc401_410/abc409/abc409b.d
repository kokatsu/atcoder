import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sort;

    int ok, ng = N + 1;
    while (ng - ok > 1) {
        int mid = (ok + ng) / 2;

        auto ub = S.upperBound(mid - 1);
        if (ub.length >= mid) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    int res = ok;
    res.writeln;
}
