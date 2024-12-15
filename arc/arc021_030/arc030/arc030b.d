import std;

void main() {
    int n, x;
    readf("%d %d\n", n, x);

    auto h = readln.chomp.split.to!(int[]);

    auto tree = new int[][](n);
    foreach (_; 0 .. n - 1) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        tree[a] ~= b, tree[b] ~= a;
    }

    int f(int pos, int par = -1) {
        int ret;

        foreach (e; tree[pos]) {
            if (e == par)
                continue;

            int num = f(e, pos);
            if (h[e] == 1 || num > 0) {
                ret += num + 2;
            }
        }

        return ret;
    }

    int res = f(x - 1);
    res.writeln;
}
