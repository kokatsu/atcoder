import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto B = readln.chomp.split.to!(long[]);
    auto W = readln.chomp.split.to!(long[]);

    B.sort!"a > b";
    W.sort!"a > b";

    auto Wcum = W.cumulativeFold!((a, b) => a + b).array;
    auto Wmax = Wcum.cumulativeFold!((a, b) => max(a, b)).array;

    long res, bsum;
    foreach (i, b; B) {
        bsum += b;
        res = max(res, bsum + max(0, Wmax[min(i, M - 1)]));
    }

    res.writeln;
}
