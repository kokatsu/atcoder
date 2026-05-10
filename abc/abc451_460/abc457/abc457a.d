import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int X;
    readfln("%d", X);

    int res = A[X - 1];
    res.writeln;
}
