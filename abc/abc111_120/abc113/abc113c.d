import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto P = new int[](M), Q = new int[](M);
    auto lists = new int[][](N + 1);
    foreach (i; 0 .. M) {
        int Y;
        readf("%d %d\n", P[i], Y);

        Q[i] = lists[P[i]].length.to!int;
        lists[P[i]] ~= Y;
    }

    void f(ref int[] arr) {
        auto tmp = arr.dup.sort.uniq.array.assumeSorted;
        foreach (ref a; arr) {
            a = tmp.lowerBound(a).length.to!int;
        }
    }

    foreach (i; 1 .. N + 1) {
        if (lists[i].empty)
            continue;

        f(lists[i]);
        lists[i][] += 1;
    }

    foreach (i; 0 .. M)
        writefln("%06d%06d", P[i], lists[P[i]][Q[i]]);
}
