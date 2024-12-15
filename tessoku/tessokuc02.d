import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res = A[0] + A[1];
    res.writeln;
}
