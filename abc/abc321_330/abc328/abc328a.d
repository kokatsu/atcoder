import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto S = readln.chomp.split.to!(int[]);

    int res = S.filter!(a => a <= X).sum;
    res.writeln;
}
