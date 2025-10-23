import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[] B = A.dup;

    B.sort!"a > b";

    long res = A.countUntil!(a => a == B[1]) + 1;
    res.writeln;
}
