import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res = A[0] + A[1];
    res.writeln;
}
