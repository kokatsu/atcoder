import std;

void main() {
    int N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    auto W = new int[](N), V = new int[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", W[i], V[i]);

    auto X = readln.chomp.split.to!(int[]);

    zip(W, V).sort!"a[1] > b[1]";

    foreach (_; 0 .. Q) {
        int L, R;
        readf("%d %d\n", L, R);

        auto rbt = new RedBlackTree!(int, "a < b", true)();

        foreach (i; 0 .. L - 1)
            rbt.insert(X[i]);
        foreach (i; R .. M)
            rbt.insert(X[i]);

        int res;
        foreach (w, v; zip(W, V)) {
            auto ub = rbt.upperBound(w - 1);
            if (ub.empty)
                continue;

            res += v;
            rbt.removeKey(ub.front);
        }

        res.writeln;
    }
}
