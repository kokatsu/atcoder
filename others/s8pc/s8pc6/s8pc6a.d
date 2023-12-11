import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto A = readln.chomp.split.to!(int[]);

    int S = A.sum;

    int res = (S + T - 1) / T;
    res.writeln;
}