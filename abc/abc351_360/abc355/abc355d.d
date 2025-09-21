import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] l = new int[](N), r = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", l[i], r[i]);
    }

    zip(l, r).sort;

    auto s = l.assumeSorted;

    ulong res;
    foreach (i, x; r) {
        auto lb = s.lowerBound(x + 1);
        res += lb.length - i - 1;
    }

    res.writeln;
}
