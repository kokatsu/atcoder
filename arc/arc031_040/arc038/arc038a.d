import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res = A.stride(2).sum;
    res.writeln;
}
