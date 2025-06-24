import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M = A.maxElement;

    int res = A.filter!(a => a < M).maxElement;
    res.writeln;
}
