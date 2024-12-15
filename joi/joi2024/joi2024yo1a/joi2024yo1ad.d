import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto res = A.uniq.array;
    writefln("%(%d\n%)", res);
}
