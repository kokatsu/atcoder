import std;

void main() {
    long N, P;
    readf("%d %d\n", N, P);

    auto A = readln.chomp.split.to!(long[]);

    long odd = A.count!"(a & 1) == 1";
    long even = N - odd;

    long res = 1L << (N - 1);
    if (odd == 0) {
        res = (P == 1 ? 0 : 1L << N);
    }

    res.writeln;
}
