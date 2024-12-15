import std;

void main() {
    long N, x;
    readf("%d %d\n", N, x);

    auto a = readln.chomp.split.to!(long[]);

    long res;
    foreach (i; 1 .. N) {
        long diff = a[i] + a[i - 1] - x;
        if (diff > 0) {
            a[i] -= min(a[i], diff);
            res += diff;
        }
    }

    res.writeln;
}
