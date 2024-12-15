import std;

void main() {
    auto rbt = new RedBlackTree!(int, "a < b")();

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int op, x;
        readf("%d %d\n", op, x);

        if (op == 1) {
            rbt.insert(x);
        }
        else {
            int res = int.max;

            auto lb = rbt.lowerBound(x + 1);
            if (!lb.empty)
                res = min(res, x - lb.back);

            auto ub = rbt.upperBound(x - 1);
            if (!ub.empty)
                res = min(res, ub.front - x);

            if (res == int.max)
                res = -1;

            res.writeln;
        }
    }
}
