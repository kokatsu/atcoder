import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res = A[0..2].sum;
    res.writeln;
}