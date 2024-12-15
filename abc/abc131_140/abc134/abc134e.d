import std;

void main() {
    int N;
    readf("%d\n", N);

    auto rbt = new RedBlackTree!(int, "a < b", true)();
    foreach (_; 0 .. N) {
        int A;
        readf("%d\n", A);

        auto l = rbt.lowerBound(A);
        if (!l.empty)
            rbt.removeKey(l.back);

        rbt.insert(A);
    }

    rbt.length.writeln;
}
