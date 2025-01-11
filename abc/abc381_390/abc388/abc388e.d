import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto rbt = A.redBlackTree!true;

    auto used = new RedBlackTree!(int, "a < b", true)();

    int res;
    while (!rbt.empty) {
        auto b = rbt.back;
        rbt.removeBack;

        auto lb = rbt.lowerBound(b / 2 + 1);
        if (!lb.empty) {
            int c = lb.back;
            ++res;
            rbt.removeKey(c);
            used.insert(c);
        }
        else if (!used.empty) {
            auto ub = used.upperBound(b);
            if (!ub.empty) {
                int c = ub.back;
                rbt.insert(c);
                used.removeKey(c);
                used.insert(b);
            }
        }
    }

    res.writeln;
}
