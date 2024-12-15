import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    --N;
    long res = long.max;
    foreach (i; 0 .. 1 << N) {
        int or, xor;
        foreach (j, a; A) {
            or |= a;

            if (((i >> j) & 1) || j == N) {
                xor ^= or;
                or = 0;
            }
        }

        res = min(res, xor);
    }

    res.writeln;
}
