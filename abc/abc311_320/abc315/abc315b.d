import std;

void main() {
    int M;
    readf("%d\n", M);

    auto D = [0] ~ readln.chomp.split.to!(int[]);

    auto A = D.cumulativeFold!"a + b".array;
    auto S = A.assumeSorted;

    int H = (D.sum + 1) / 2;

    auto a = S.lowerBound(H).length;
    int b = H - A[a - 1];

    string res = format("%d %d", a, b);
    res.writeln;
}
