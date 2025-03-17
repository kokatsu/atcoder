import std;

void main() {
    int W, H, N;
    readf("%d %d\n%d\n", W, H, N);

    auto p = new int[](N), q = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", p[i], q[i]);
    }

    int A;
    readf("%d\n", A);

    auto a = readln.chomp.split.to!(int[]);

    int B;
    readf("%d\n", B);

    auto b = readln.chomp.split.to!(int[]);

    auto as = a.assumeSorted;
    auto bs = b.assumeSorted;

    int[Tuple!(ulong, ulong)] counts;
    foreach (i; 0 .. N) {
        auto x = as.lowerBound(p[i]).length;
        auto y = bs.lowerBound(q[i]).length;
        ++counts[tuple(x, y)];
    }

    int m = counts.length == (A + 1) * (B + 1) ? int.max : 0, M;
    foreach (v; counts.values) {
        if (v < m) {
            m = v;
        }

        if (v > M) {
            M = v;
        }
    }

    string res = format("%d %d", m, M);
    res.writeln;
}
