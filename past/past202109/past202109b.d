import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    A.sort;
    B.sort;

    auto res = A.setIntersection(B).array;
    writefln("%(%s %)", res);
}