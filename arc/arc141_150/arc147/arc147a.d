import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    auto rbt = A.redBlackTree!("a < b", true);
    while (rbt.length > 1) {
        ++res;

        int mn = rbt.front;

        int mx = rbt.back;
        rbt.removeBack;

        int r = mx % mn;
        if (r > 0)
            rbt.insert(r);
    }

    res.writeln;
}
