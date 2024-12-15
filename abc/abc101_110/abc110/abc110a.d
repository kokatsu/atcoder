import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res = A[0] * 10 + A[1] + A[2];
    res.writeln;
}
