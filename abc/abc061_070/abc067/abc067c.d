import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    long l, r = a.sum;

    long res = long.max;
    foreach (i; 0 .. N - 1) {
        l += a[i], r -= a[i];
        res = min(res, abs(l - r));
    }

    res.writeln;
}
