import std;

void main() {
    int[] A = new int[](3);
    readf("%d\n%d\n%d\n", A[0], A[1], A[2]);

    A.sort;

    string res = format("%b", A[0] + A[1] == A[2]);
    res.writeln;
}
