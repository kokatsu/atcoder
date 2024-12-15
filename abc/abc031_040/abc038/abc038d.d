import std;

void main() {
    int N;
    readf("%d\n", N);

    auto h = new int[](N), w = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", h[i], w[i]);

    zip(h, w).sort!"a[0] == b[0] ? a[1] > b[1] : a[0] < b[0]";

    auto rbt = new RedBlackTree!(int, "a < b", true)();
    foreach (x; w) {
        auto ub = rbt.upperBound(x - 1);
        if (!ub.empty)
            rbt.removeKey(ub.front);

        rbt.insert(x);
    }

    auto res = rbt.length;
    res.writeln;
}
