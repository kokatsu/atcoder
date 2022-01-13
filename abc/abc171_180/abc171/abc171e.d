import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    long b = a.fold!"a ^ b";
    a[] ^= b;

    writefln("%(%d %)", a);
}