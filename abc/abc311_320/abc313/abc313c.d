import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long S = A.sum;
    long D = S / N, R = S % N;

    A.sort!"a > b";

    long res;
    foreach (i, a; A) {
        long b = i < R ? D + 1 : D;
        res += abs(a - b);
    }

    res /= 2;

    res.writeln;
}
