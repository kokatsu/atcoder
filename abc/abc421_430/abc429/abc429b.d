import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] A = readln.chomp.split.to!(int[]);

    int S = A.sum;

    string res = A.any!(a => S - a == M) ? "Yes" : "No";
    res.writeln;
}
