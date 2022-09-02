import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    auto rbt = new RedBlackTree!(int, "a < b")();
    int[int] pos;
    foreach (i; K .. N) {
        if (A[i] in pos) continue;

        rbt.insert(A[i]);
        pos[A[i]] = i;
    }

    auto list = pos.keys.array;

    list.sort!"a > b";

    auto len = list.length;
    foreach (i; 1 .. len) {
        pos[list[i]] = min(pos[list[i]], pos[list[i-1]]);
    }

    int res = int.max;
    foreach (i; 0 .. K) {
        auto ub = rbt.upperBound(A[i]);

        if (ub.empty) continue;

        res = min(res, pos[ub.front]-i);
    }

    if (res == int.max) res = -1;

    res.writeln;
}