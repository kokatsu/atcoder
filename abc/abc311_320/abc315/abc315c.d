import std;

void main() {
    int N;
    readf("%d\n", N);

    auto F = new int[](N), S = new int[](N);
    auto M = new int[][](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", F[i], S[i]);

        --F[i];
        M[F[i]] ~= S[i];
    }

    auto rbt = new RedBlackTree!(int, "a > b", true)();
    foreach (i; 0 .. N) {
        if (M[i].empty) {
            continue;
        }

        M[i].sort!"a > b";
        rbt.insert(M[i].front);
    }

    int res;
    foreach (i; 0 .. N) {
        if (M[i].empty) {
            continue;
        }

        rbt.removeKey(M[i].front);

        int t = M[i].length > 1 ? M[i][1] / 2 : 0;
        if (t > 0) {
            rbt.insert(t);
        }

        res = max(res, M[i].front + rbt.front);

        if (t > 0) {
            rbt.removeKey(t);
        }
    }

    res.writeln;
}
