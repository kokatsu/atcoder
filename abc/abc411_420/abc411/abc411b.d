import std;

void main() {
    int N;
    readf("%d\n", N);

    auto D = [0] ~ readln.chomp.split.to!(int[]);

    auto C = D.cumulativeFold!"a + b".array;

    string res = iota(1, N).map!(i =>
            format("%(%d %)", iota(i, N).map!(j => C[j] - C[i - 1]))).array.join("\n");
    res.writeln;
}
