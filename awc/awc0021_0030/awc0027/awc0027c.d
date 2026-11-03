import std;

void main() {
    int N;
    readfln("%d", N);

    int[] X = readln.chomp.split.to!(int[]);

    X.sort;

    int res = N > 1 ? iota(N - 1).map!(i => X[i + 1] - X[i]).maxElement : 0;
    res.writeln;
}
