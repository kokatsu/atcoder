import std;

void main() {
    int N;
    readf("%d\n", N);

    auto rbt = new RedBlackTree!(int, "a < b", true)();
    foreach (_; 0 .. N) {
        int w;
        readf("%d\n", w);

        auto u = rbt.upperBound(w - 1);
        if (!u.empty)
            rbt.removeKey(u.front);

        rbt.insert(w);
    }

    auto res = rbt.length;
    res.writeln;
}
