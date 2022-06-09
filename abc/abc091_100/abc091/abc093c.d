import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N * 2;

    auto x = new int[](M), y = new int[](M);
    foreach (i; 0 .. M) readf("%d %d\n", x[i], y[i]);

    auto isRed = new bool[](M);
    isRed[0..N] = true;

    zip(x, y, isRed).sort;

    auto rbt = new RedBlackTree!(int, "a < b")();

    int res;
    foreach (i; 0 .. M) {
        if (isRed[i]) {
            rbt.insert(y[i]);
        }
        else {
            auto lb = rbt.lowerBound(y[i]);
            if (!lb.empty) {
                rbt.removeKey(lb.back);
                ++res;
            }
        }
    }

    res.writeln;
}