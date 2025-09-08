import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int[] P = readln.chomp.split.to!(int[]);

    P[] -= 1;

    int[] Q = new int[](N);
    foreach (i, p; P) {
        Q[p] = i.to!int;
    }

    auto rbt = new RedBlackTree!int;
    int res = int.max;
    foreach (i; 0 .. N) {
        rbt.insert(Q[i]);

        if (i + 1 >= K) {
            res = min(res, rbt.back - rbt.front);
            rbt.removeKey(Q[i + 1 - K]);
        }
    }

    res.writeln;
}
