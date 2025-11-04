import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res;
    while (A[1] > 0) {
        ++res;
        --A[0], --A[1];
        A.sort!"a > b";
    }

    res.writeln;
}
