import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(int[]);

    auto res = A.remove!(a => a == X);
    writefln("%(%s %)", res);
}
