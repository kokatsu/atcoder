import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    int[] res = A ~ B;

    res.sort;

    writefln("%(%d\n%)", res);
}