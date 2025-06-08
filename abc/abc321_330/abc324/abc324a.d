import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    string res = A.all!(a => a == A[0])
        ? "Yes" : "No";
    res.writeln;
}
