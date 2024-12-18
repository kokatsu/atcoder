import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A1 = readln.chomp.split.to!(int[]);
    auto A2 = readln.chomp.split.to!(int[]);

    auto C1 = A1.cumulativeFold!((a, b) => a + b).array;
    auto C2 = A2.reverse.cumulativeFold!((a, b) => a + b).array;
    C2.reverse;

    int res = N.iota.map!(i => C1[i] + C2[i]).maxElement;
    res.writeln;
}
