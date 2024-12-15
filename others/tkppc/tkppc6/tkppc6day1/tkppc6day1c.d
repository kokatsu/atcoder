import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto x = A.count!(a => 0 <= a && a < A[0]);
    long y = A.count!(a => a > A[0]);

    string res = x < N && y < N ? "Yes" : "No";
    res.writeln;
}
