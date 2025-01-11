import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.assumeSorted;

    auto res = A.map!(a => S.upperBound(a * 2 - 1).length).sum;
    res.writeln;
}
