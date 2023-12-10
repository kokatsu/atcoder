import std;

void main() {
    long N, D;
    readf("%d %d\n", N, D);

    auto R = readln.chomp.split.to!(long[]);

    auto S = R.sort;

    long res;
    foreach (i, r; R) {
        auto l = S.lowerBound(r+D+1).length;

        long d = to!long(l-i) - 1;
        res += d * (d - 1) / 2;
    }

    res.writeln;
}