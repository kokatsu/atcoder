import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = new int[](N), R = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", L[i], R[i]);
    }

    zip(L, R).sort!"a[0] == b[0] ? a[1] < b[1] : a[0] > b[0]";

    auto rbt = new RedBlackTree!(int, "a < b", true)();
    foreach (r; R) {
        auto ub = rbt.upperBound(r);
        if (!ub.empty) {
            rbt.removeKey(ub.front);
        }

        rbt.insert(r);
    }

    auto res = rbt.length;
    res.writeln;
}