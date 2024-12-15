import std;

void main() {
    int X, N;
    readf("%d %d\n", X, N);

    auto p = readln.chomp.split.to!(int[]);

    int len = 102;

    auto isContained = new bool[](len);
    foreach (x; p)
        isContained[x] = true;

    auto q = len.iota.array.filter!(i => !isContained[i]).array;
    auto s = q.sort;

    int res, diff = int.max;

    auto lb = s.lowerBound(X + 1);
    if (!lb.empty) {
        if (X - lb.back < diff) {
            res = lb.back;
            diff = X - lb.back;
        }
    }

    auto ub = s.upperBound(X - 1);
    if (!ub.empty) {
        if (ub.front - X < diff) {
            res = ub.front;
            diff = ub.front - X;
        }
    }

    res.writeln;
}
