import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto res = A.filter!(a => a % 2 == 0).array;
    writefln("%(%s %)", res);
}