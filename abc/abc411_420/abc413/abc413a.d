import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    int S = A.sum;

    string res = M >= S ? "Yes" : "No";
    res.writeln;
}
