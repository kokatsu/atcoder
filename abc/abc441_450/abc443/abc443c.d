import std;

void main() {
    int N, T;
    readfln("%d %d", N, T);

    int[] A = readln.chomp.split.to!(int[]);

    auto Q = new BinaryHeap!(Array!(Tuple!(int, bool)), "a[0] > b[0]");
    foreach (a; A) {
        Q.insert(tuple(a, true));
    }
    Q.insert(tuple(T, true));

    int res, pre;
    bool open = true;
    while (!Q.empty) {
        auto f = Q.front;
        Q.popFront;

        if (f[1] && open) {
            res += min(T, f[0]) - pre;
            open = false;
            Q.insert(tuple(f[0] + 100, false));
        }
        else if (!f[1]) {
            pre = f[0];
            open = true;
        }
    }

    res.writeln;
}
