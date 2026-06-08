import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    string res = N.iota.all!(i => i + 1 == B[A[i] - 1]) ? "Yes" : "No";
    res.writeln;
}
