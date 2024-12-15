import std;

enum long M = 10 ^^ 3;

void main() {
    long N, T, A;
    readf("%d\n%d %d\n", N, T, A);

    auto H = readln.chomp.split.to!(long[]);

    T *= M, A *= M;

    long diff = long.max;
    ulong res;
    foreach (i, h; H) {
        long d = abs(A - (T - h * 6));
        if (d < diff) {
            diff = d;
            res = i + 1;
        }
    }

    res.writeln;
}
