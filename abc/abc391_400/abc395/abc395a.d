import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    string res = iota(1, N).all!(i => A[i - 1] < A[i]) ? "Yes" : "No";
    res.writeln;
}
