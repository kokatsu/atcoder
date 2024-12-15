import std;

void main() {
    int n, X;
    readf("%d %d\n", n, X);

    auto a = readln.chomp.split.to!(int[]);

    int res, i;
    while (X > 0) {
        if (X % 2 == 1) {
            res += a[i];
        }

        X /= 2, ++i;
    }

    res.writeln;
}
