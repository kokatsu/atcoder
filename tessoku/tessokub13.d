import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long res, num, r;
    foreach (l, a; A) {
        while (r < N && num + A[r] <= K) {
            num += A[r++];
        }

        res += r - l.to!long;

        if (l == r) ++r;
        else num -= a;
    }

    res.writeln;
}